import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/isar_collections.dart';
import '../domain/ticket_model.dart';

/// Repository for purchased tickets with full lifecycle.
/// Tickets are scoped per user (ownerEmail).
class TicketRepository {
  final Isar _isar;

  TicketRepository(this._isar);

  Future<String?> _currentEmail() async {
    final session = await _isar.isarAuthSessions
        .filter()
        .keyEqualTo('session')
        .findFirst();
    return session?.activeEmail;
  }

  /// Get all tickets for the current user, auto-expiring past events.
  Future<List<TicketModel>> getAllTickets() async {
    final email = await _currentEmail();
    if (email == null) return [];

    final results = await _isar.isarTickets
        .filter()
        .ownerEmailEqualTo(email)
        .sortByPurchaseDateDesc()
        .findAll();

    // Auto-expire any confirmed ticket whose event date is past.
    final now = DateTime.now();
    final toUpdate = <IsarTicket>[];
    for (final t in results) {
      if (t.status == 'confirmed' &&
          t.eventDateParsed != null &&
          t.eventDateParsed!.isBefore(now.subtract(const Duration(days: 1)))) {
        t.status = 'used'; // assume attended
        toUpdate.add(t);
      }
    }
    if (toUpdate.isNotEmpty) {
      await _isar.writeTxn(() async {
        for (final t in toUpdate) {
          await _isar.isarTickets.put(t);
        }
      });
    }

    return results.map(_toModel).toList();
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

    final ticket = IsarTicket()
      ..ticketId = ticketId
      ..eventId = eventId
      ..eventName = eventName
      ..eventDate = eventDate
      ..eventLocation = eventLocation
      ..eventImageUrl = eventImageUrl
      ..price = price
      ..ticketType = ticketType
      ..status = 'confirmed'
      ..purchaseDate = DateTime.now()
      ..qrCodeData = qrData
      ..ownerEmail = email
      ..eventDateParsed = _parseEventDate(eventDate);

    await _isar.writeTxn(() async {
      await _isar.isarTickets.put(ticket);
    });

    return _toModel(ticket);
  }

  Future<void> cancelTicket(String ticketId) async {
    final ticket = await _isar.isarTickets
        .filter()
        .ticketIdEqualTo(ticketId)
        .findFirst();
    if (ticket == null) return;

    ticket.status = 'cancelled';
    ticket.cancelledAt = DateTime.now();
    ticket.refundAmount = ticket.price * 0.9; // 90% refund
    await _isar.writeTxn(() async {
      await _isar.isarTickets.put(ticket);
    });
  }

  Future<void> transferTicket(String ticketId, String recipientEmail) async {
    final ticket = await _isar.isarTickets
        .filter()
        .ticketIdEqualTo(ticketId)
        .findFirst();
    if (ticket == null) return;

    ticket.status = 'transferred';
    ticket.transferredToEmail = recipientEmail.trim().toLowerCase();
    ticket.transferredAt = DateTime.now();
    await _isar.writeTxn(() async {
      await _isar.isarTickets.put(ticket);
    });
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
  /// Falls back to null if unable to parse. Picks the END of date ranges.
  static DateTime? _parseEventDate(String input) {
    final monthMap = <String, int>{
      'janvier': 1, 'février': 2, 'mars': 3, 'avril': 4,
      'mai': 5, 'juin': 6, 'juillet': 7, 'août': 8,
      'septembre': 9, 'sept': 9, 'octobre': 10, 'oct': 10,
      'novembre': 11, 'décembre': 12,
    };
    final lower = input.toLowerCase();
    // Find year (4 digits)
    final yearMatch = RegExp(r'(\d{4})').firstMatch(lower);
    if (yearMatch == null) return null;
    final year = int.parse(yearMatch.group(1)!);
    // Find month
    int? month;
    for (final entry in monthMap.entries) {
      if (lower.contains(entry.key)) {
        month = entry.value;
        break;
      }
    }
    if (month == null) return null;
    // Find days — pick the highest (end of range).
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
