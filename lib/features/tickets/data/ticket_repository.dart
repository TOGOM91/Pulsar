import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';
import '../domain/ticket_model.dart';

class TicketRepository {
  final FirestoreService _fs;

  TicketRepository(this._fs);

  String? _email() => FirebaseAuth.instance.currentUser?.email?.toLowerCase();

  Future<List<TicketModel>> getAllTickets() async {
    final email = _email();
    if (email == null) return [];

    final query = _fs.tickets
        .where('ownerEmail', isEqualTo: email)
        .orderBy('purchaseDate', descending: true);

    final snap = await _safeGet(query);
    final rows = snap.docs.map(IsarTicket.fromFirestore).toList();

    // Auto-expire confirmed tickets whose event date is past (online-only).
    final now = DateTime.now();
    final cutoff = now.subtract(const Duration(days: 1));
    final batch = _fs.db.batch();
    var dirty = false;
    for (final t in rows) {
      if (t.status == 'confirmed' &&
          t.eventDateParsed != null &&
          t.eventDateParsed!.isBefore(cutoff)) {
        batch.update(_fs.tickets.doc(t.ticketId), {'status': 'used'});
        dirty = true;
      }
    }
    if (dirty) {
      try {
        await batch.commit();
        final refreshed = await _safeGet(query);
        return refreshed.docs.map(IsarTicket.fromFirestore).map(_toModel).toList();
      } on FirebaseException {
        // Offline — return current rows without expiry update.
      }
    }

    return rows.map(_toModel).toList();
  }

  // ── Offline helper ───────────────────────────────────────────────────────

  static Future<QuerySnapshot<Map<String, dynamic>>> _safeGet(
    Query<Map<String, dynamic>> query,
  ) async {
    try {
      return await query.get();
    } on FirebaseException catch (e) {
      if (e.code == 'unavailable') {
        return query.get(const GetOptions(source: Source.cache));
      }
      rethrow;
    }
  }

  Future<TicketModel> createTicket({
    required String eventId,
    required String eventName,
    required String eventDate,
    required String eventLocation,
    String? eventImageUrl,
    required double price,
    String ticketType = 'standard',
    String? orderId,
  }) async {
    final email = _email();
    if (email == null) throw StateError('No user logged in');

    const uuid = Uuid();
    final ticketId = uuid.v4();
    final qrData = 'PULSAR-$ticketId-$eventId';
    final ticket = IsarTicket(
      ticketId: ticketId,
      eventId: eventId,
      eventName: eventName,
      eventDate: eventDate,
      eventLocation: eventLocation,
      eventImageUrl: eventImageUrl,
      price: price,
      ticketType: ticketType,
      status: 'confirmed',
      purchaseDate: DateTime.now(),
      qrCodeData: qrData,
      ownerEmail: email,
      eventDateParsed: _parseEventDate(eventDate),
      orderId: orderId,
    );

    await _fs.tickets.doc(ticketId).set(ticket.toFirestore());
    return _toModel(ticket);
  }

  Future<void> cancelTicket(String ticketId) async {
    final doc = await _fs.tickets.doc(ticketId).get();
    if (!doc.exists) return;
    final t = IsarTicket.fromFirestore(doc);
    await _fs.tickets.doc(ticketId).update({
      'status': 'cancelled',
      'cancelledAt': Timestamp.fromDate(DateTime.now()),
      'refundAmount': t.price * 0.9,
    });
  }

  Future<void> transferTicket(String ticketId, String recipientEmail) async {
    await _fs.tickets.doc(ticketId).update({
      'status': 'transferred',
      'transferredToEmail': recipientEmail.trim().toLowerCase(),
      'transferredAt': Timestamp.fromDate(DateTime.now()),
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
