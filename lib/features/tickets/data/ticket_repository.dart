import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/app_database.dart';
import '../domain/ticket_model.dart';

/// Repository for purchased tickets with full lifecycle.
/// Tickets are scoped per user (ownerEmail).
class TicketRepository {
  final AppDatabase _db;

  TicketRepository(this._db);

  Future<String?> _currentEmail() async {
    final row = await (_db.select(_db.isarAuthSessions)
          ..where((s) => s.key.equals('session')))
        .getSingleOrNull();
    return row?.activeEmail;
  }

  Future<List<TicketModel>> getAllTickets() async {
    final email = await _currentEmail();
    if (email == null) return [];

    final rows = await (_db.select(_db.isarTickets)
          ..where((t) => t.ownerEmail.equals(email))
          ..orderBy([(t) => OrderingTerm.desc(t.purchaseDate)]))
        .get();

    // Auto-expire any confirmed ticket whose event date is past.
    final now = DateTime.now();
    final cutoff = now.subtract(const Duration(days: 1));
    for (final t in rows) {
      if (t.status == 'confirmed' &&
          t.eventDateParsed != null &&
          t.eventDateParsed!.isBefore(cutoff)) {
        await (_db.update(_db.isarTickets)
              ..where((x) => x.isarId.equals(t.isarId)))
            .write(const IsarTicketsCompanion(status: Value('used')));
      }
    }

    // Re-fetch to get fresh statuses if any changed.
    final refreshed = await (_db.select(_db.isarTickets)
          ..where((t) => t.ownerEmail.equals(email))
          ..orderBy([(t) => OrderingTerm.desc(t.purchaseDate)]))
        .get();

    return refreshed.map(_toModel).toList();
  }

  Future<TicketModel> createTicket({
    required String eventId,
    required String eventName,
    required String eventDate,
    required String eventLocation,
    String? eventImageUrl,
    required double price,
    String ticketType = 'standard',
  }) async {
    final email = await _currentEmail();
    if (email == null) {
      throw StateError('No user logged in');
    }

    const uuid = Uuid();
    final ticketId = uuid.v4();
    final qrData = 'PULSAR-$ticketId-$eventId';

    await _db.into(_db.isarTickets).insert(IsarTicketsCompanion.insert(
          ticketId: ticketId,
          eventId: eventId,
          eventName: eventName,
          eventDate: eventDate,
          eventLocation: eventLocation,
          eventImageUrl: Value(eventImageUrl),
          price: price,
          ticketType: ticketType,
          status: 'confirmed',
          purchaseDate: DateTime.now(),
          qrCodeData: Value(qrData),
          ownerEmail: email,
          eventDateParsed: Value(_parseEventDate(eventDate)),
        ));

    final row = await (_db.select(_db.isarTickets)
          ..where((t) => t.ticketId.equals(ticketId)))
        .getSingle();
    return _toModel(row);
  }

  Future<void> cancelTicket(String ticketId) async {
    final row = await (_db.select(_db.isarTickets)
          ..where((t) => t.ticketId.equals(ticketId)))
        .getSingleOrNull();
    if (row == null) return;

    await (_db.update(_db.isarTickets)
          ..where((t) => t.isarId.equals(row.isarId)))
        .write(IsarTicketsCompanion(
      status: const Value('cancelled'),
      cancelledAt: Value(DateTime.now()),
      refundAmount: Value(row.price * 0.9),
    ));
  }

  Future<void> transferTicket(String ticketId, String recipientEmail) async {
    final row = await (_db.select(_db.isarTickets)
          ..where((t) => t.ticketId.equals(ticketId)))
        .getSingleOrNull();
    if (row == null) return;

    await (_db.update(_db.isarTickets)
          ..where((t) => t.isarId.equals(row.isarId)))
        .write(IsarTicketsCompanion(
      status: const Value('transferred'),
      transferredToEmail: Value(recipientEmail.trim().toLowerCase()),
      transferredAt: Value(DateTime.now()),
    ));
  }

  TicketModel _toModel(IsarTicket e) => TicketModel(
        id: e.ticketId,
        eventId: e.eventId,
        eventName: e.eventName,
        eventDate: e.eventDate,
        eventLocation: e.eventLocation,
        eventImageUrl: e.eventImageUrl,
        price: e.price,
        ticketType: e.ticketType,
        status: TicketStatus.values.firstWhere(
          (s) => s.name == e.status,
          orElse: () => TicketStatus.confirmed,
        ),
        purchaseDate: e.purchaseDate,
        qrCodeData: e.qrCodeData,
        transferredToEmail: e.transferredToEmail,
        cancelledAt: e.cancelledAt,
        refundAmount: e.refundAmount,
        eventDateParsed: e.eventDateParsed,
      );

  /// Parse event date string heuristically — French formats only.
  static DateTime? _parseEventDate(String input) {
    final monthMap = <String, int>{
      'janvier': 1, 'février': 2, 'mars': 3, 'avril': 4,
      'mai': 5, 'juin': 6, 'juillet': 7, 'août': 8,
      'septembre': 9, 'sept': 9, 'octobre': 10, 'oct': 10,
      'novembre': 11, 'décembre': 12,
    };
    final lower = input.toLowerCase();
    final yearMatch = RegExp(r'(\d{4})').firstMatch(lower);
    if (yearMatch == null) return null;
    final year = int.parse(yearMatch.group(1)!);
    int? month;
    for (final entry in monthMap.entries) {
      if (lower.contains(entry.key)) {
        month = entry.value;
        break;
      }
    }
    if (month == null) return null;
    final dayMatches = RegExp(r'(\d{1,2})').allMatches(lower);
    var maxDay = 1;
    for (final m in dayMatches) {
      final d = int.parse(m.group(1)!);
      if (d <= 31 && d > maxDay) maxDay = d;
    }
    try {
      return DateTime(year, month, maxDay);
    } catch (_) {
      return null;
    }
  }
}
