import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/firestore_service.dart';
import '../../../core/database/models.dart';
import '../domain/role.dart';

/// Single entry point for all admin operations. Writes are audit-logged.
class AdminRepository {
  final FirestoreService _fs;
  static const _uuid = Uuid();

  AdminRepository(this._fs);

  // ── Stats ──

  Future<DashboardStats> computeStats() async {
    final results = await Future.wait([
      _fs.users.get(),
      _fs.events.get(),
      _fs.orders.get(),
      _fs.tickets.get(),
    ]);
    final users =
        results[0].docs.map(IsarUserProfile.fromFirestore).toList();
    final events = results[1].docs.map(IsarEvent.fromFirestore).toList();
    final orders = results[2].docs.map(IsarOrder.fromFirestore).toList();
    final totalTickets = results[3].size;

    final paid = orders.where((o) => o.status == 'paid').toList();
    final refunded = orders.where((o) => o.status == 'refunded').toList();
    final revenue = paid.fold<double>(0, (s, o) => s + o.total);
    final refundedAmount =
        refunded.fold<double>(0, (s, o) => s + (o.refundAmount ?? o.total));
    final co2 = users.fold<double>(0, (s, u) => s + u.co2SavedKg);

    final byRole = <UserRole, int>{for (final r in UserRole.values) r: 0};
    var suspended = 0;
    for (final u in users) {
      final role = UserRole.fromWire(u.role);
      byRole[role] = (byRole[role] ?? 0) + 1;
      if (u.isSuspended) suspended++;
    }

    return DashboardStats(
      totalUsers: users.length,
      totalEvents: events.length,
      publishedEvents: events.where((e) => e.isPublished).length,
      totalOrders: orders.length,
      paidOrders: paid.length,
      refundedOrders: refunded.length,
      totalTickets: totalTickets,
      revenue: revenue,
      refundedAmount: refundedAmount,
      co2SavedKg: co2,
      byRole: byRole,
      suspendedUsers: suspended,
    );
  }

  // ── Events ──

  Future<List<IsarEvent>> listEvents() async {
    final snap = await _fs.events.orderBy('sortOrder').get();
    return snap.docs.map(IsarEvent.fromFirestore).toList();
  }

  Future<IsarEvent?> findEvent(String eventId) async {
    final doc = await _fs.events.doc(eventId).get();
    if (!doc.exists) return null;
    return IsarEvent.fromFirestore(doc);
  }

  Future<IsarEvent> createEvent({
    required IsarUserProfile actor,
    required AdminEventInput input,
  }) async {
    final id = input.eventId.isEmpty
        ? 'evt-${_uuid.v4().substring(0, 8)}'
        : input.eventId;
    final now = DateTime.now();
    final event = IsarEvent(
      eventId: id,
      name: input.name,
      category: input.category,
      duration: input.duration,
      imageUrl: input.imageUrl,
      gradient: input.gradient.isEmpty
          ? 'linear-gradient(135deg, #7C3AED 0%, #06B6D4 100%)'
          : input.gradient,
      date: input.date,
      location: input.location,
      transport: input.transport,
      accommodation: input.accommodation,
      pricingLabel: input.pricingLabel,
      pricingAmount: input.pricingAmount,
      pricingSavings: input.pricingSavings,
      pricingSavingsText: input.pricingSavingsText,
      currency: input.currency.isEmpty ? '€' : input.currency,
      genres: input.genres,
      badgeTypes: input.badgeTypes,
      badgeTexts: input.badgeTexts,
      section: input.section.isEmpty ? 'upcoming' : input.section,
      sortOrder: input.sortOrder,
      isPublished: input.isPublished,
      createdAt: now,
      updatedAt: now,
      updatedByEmail: actor.email,
    );
    await _fs.events.doc(id).set(event.toFirestore());
    await _audit(actor, 'event.create', 'event', id, {'name': input.name});
    return (await findEvent(id))!;
  }

  Future<IsarEvent?> updateEvent({
    required IsarUserProfile actor,
    required String eventId,
    required AdminEventInput input,
  }) async {
    if (await findEvent(eventId) == null) return null;
    final updates = <String, dynamic>{
      'name': input.name,
      'category': input.category,
      'duration': input.duration,
      'imageUrl': input.imageUrl,
      'date': input.date,
      'location': input.location,
      'transport': input.transport,
      'accommodation': input.accommodation,
      'pricingLabel': input.pricingLabel,
      'pricingAmount': input.pricingAmount,
      'pricingSavings': input.pricingSavings,
      'pricingSavingsText': input.pricingSavingsText,
      'genres': input.genres,
      'badgeTypes': input.badgeTypes,
      'badgeTexts': input.badgeTexts,
      'sortOrder': input.sortOrder,
      'isPublished': input.isPublished,
      'updatedAt': Timestamp.fromDate(DateTime.now()),
      'updatedByEmail': actor.email,
    };
    if (input.gradient.isNotEmpty) updates['gradient'] = input.gradient;
    if (input.section.isNotEmpty) updates['section'] = input.section;
    if (input.currency.isNotEmpty) updates['currency'] = input.currency;

    await _fs.events.doc(eventId).update(updates);
    await _audit(actor, 'event.update', 'event', eventId, {'name': input.name});
    return findEvent(eventId);
  }

  Future<void> deleteEvent({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    await _fs.events.doc(eventId).delete();
    await _audit(actor, 'event.delete', 'event', eventId, {'name': event.name});
  }

  Future<void> toggleEventPublished({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    final newPublished = !event.isPublished;
    await _fs.events.doc(eventId).update({
      'isPublished': newPublished,
      'updatedAt': Timestamp.fromDate(DateTime.now()),
      'updatedByEmail': actor.email,
    });
    await _audit(
      actor,
      newPublished ? 'event.publish' : 'event.unpublish',
      'event',
      eventId,
      {'name': event.name},
    );
  }

  // ── Users ──

  Future<List<IsarUserProfile>> listUsers() async {
    final snap =
        await _fs.users.orderBy('createdAt', descending: true).get();
    return snap.docs.map(IsarUserProfile.fromFirestore).toList();
  }

  Future<IsarUserProfile?> findUser(String email) async {
    final doc = await _fs.users.doc(email.toLowerCase().trim()).get();
    if (!doc.exists) return null;
    return IsarUserProfile.fromFirestore(doc);
  }

  Future<IsarUserProfile?> changeRole({
    required IsarUserProfile actor,
    required String targetEmail,
    required UserRole newRole,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    if (target.email == actor.email && newRole != UserRole.owner) {
      final ownersSnap =
          await _fs.users.where('role', isEqualTo: 'owner').get();
      if (ownersSnap.size <= 1) return target;
    }
    final previous = target.role;
    await _fs.users.doc(target.email).update({'role': newRole.wire});
    await _audit(actor, 'user.role.change', 'user', target.email,
        {'from': previous, 'to': newRole.wire});
    return findUser(target.email);
  }

  Future<IsarUserProfile?> suspendUser({
    required IsarUserProfile actor,
    required String targetEmail,
    required String reason,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    await _fs.users.doc(target.email).update({
      'isSuspended': true,
      'suspendedReason': reason,
      'suspendedAt': Timestamp.fromDate(DateTime.now()),
    });
    await _audit(
        actor, 'user.suspend', 'user', target.email, {'reason': reason});
    return findUser(target.email);
  }

  Future<IsarUserProfile?> reinstateUser({
    required IsarUserProfile actor,
    required String targetEmail,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    await _fs.users.doc(target.email).update({
      'isSuspended': false,
      'suspendedReason': null,
      'suspendedAt': null,
    });
    await _audit(actor, 'user.reinstate', 'user', target.email, null);
    return findUser(target.email);
  }

  // ── Orders ──

  Future<List<IsarOrder>> listOrders({String? statusFilter}) async {
    final Query<Map<String, dynamic>> q = statusFilter != null
        ? _fs.orders
            .where('status', isEqualTo: statusFilter)
            .orderBy('placedAt', descending: true)
        : _fs.orders.orderBy('placedAt', descending: true);
    final snap = await q.get();
    return snap.docs.map(IsarOrder.fromFirestore).toList();
  }

  Future<IsarOrder?> findOrder(String orderId) async {
    final doc = await _fs.orders.doc(orderId).get();
    if (!doc.exists) return null;
    return IsarOrder.fromFirestore(doc);
  }

  Future<IsarOrder?> refundOrder({
    required IsarUserProfile actor,
    required String orderId,
    required String reason,
    double? partialAmount,
  }) async {
    final order = await findOrder(orderId);
    if (order == null) return null;
    if (order.status != 'paid') return order;

    final amount = partialAmount ?? order.total;
    final newStatus = (partialAmount != null && partialAmount < order.total)
        ? 'partial_refund'
        : 'refunded';

    final batch = _fs.db.batch();
    batch.update(_fs.orders.doc(orderId), {
      'status': newStatus,
      'refundedAt': Timestamp.fromDate(DateTime.now()),
      'refundReason': reason,
      'refundAmount': amount,
      'refundedByEmail': actor.email,
    });

    for (final ticketId in order.ticketIds) {
      final ticketDoc = await _fs.tickets.doc(ticketId).get();
      if (ticketDoc.exists) {
        final t = IsarTicket.fromFirestore(ticketDoc);
        if (t.status == 'confirmed') {
          batch.update(_fs.tickets.doc(ticketId), {
            'status': 'cancelled',
            'cancelledAt': Timestamp.fromDate(DateTime.now()),
            'refundAmount': amount / order.ticketIds.length,
          });
        }
      }
    }

    await batch.commit();
    await _audit(actor, 'order.refund', 'order', orderId,
        {'amount': amount, 'reason': reason});
    return findOrder(orderId);
  }

  // ── Promos ──

  Future<List<IsarPromoCode>> listPromos() async {
    final snap =
        await _fs.promoCodes.orderBy('createdAt', descending: true).get();
    return snap.docs.map(IsarPromoCode.fromFirestore).toList();
  }

  Future<IsarPromoCode?> findPromo(String code) async {
    final doc = await _fs.promoCodes.doc(code.toUpperCase()).get();
    if (!doc.exists) return null;
    return IsarPromoCode.fromFirestore(doc);
  }

  Future<IsarPromoCode> savePromo({
    required IsarUserProfile actor,
    required PromoInput input,
  }) async {
    final code = input.code.toUpperCase().trim();
    final existing = await findPromo(code);
    if (existing != null) {
      await _fs.promoCodes.doc(code).update({
        'label': input.label,
        'emoji': input.emoji,
        'discountType': input.discountType,
        'discountValue': input.discountValue,
        'minSubtotal': input.minSubtotal,
        'maxUses': input.maxUses,
      });
    } else {
      final promo = IsarPromoCode(
        code: code,
        label: input.label,
        emoji: input.emoji,
        discountType: input.discountType,
        discountValue: input.discountValue,
        minSubtotal: input.minSubtotal,
        maxUses: input.maxUses,
        createdAt: DateTime.now(),
        createdByEmail: actor.email,
      );
      await _fs.promoCodes.doc(code).set(promo.toFirestore());
    }
    await _audit(actor, 'promo.save', 'promo', code,
        {'discountValue': input.discountValue});
    return (await findPromo(code))!;
  }

  Future<void> deletePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    await _fs.promoCodes.doc(code.toUpperCase()).delete();
    await _audit(actor, 'promo.delete', 'promo', code, null);
  }

  Future<IsarPromoCode?> togglePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    final p = await findPromo(code);
    if (p == null) return null;
    final next = !p.isActive;
    await _fs.promoCodes.doc(code.toUpperCase()).update({'isActive': next});
    await _audit(
        actor, next ? 'promo.enable' : 'promo.disable', 'promo', code, null);
    return findPromo(code);
  }

  // ── App Settings ──

  Future<IsarAppSettings> getOrInitSettings() async {
    final doc = await _fs.appSettingsDoc.get();
    if (doc.exists) return IsarAppSettings.fromFirestore(doc);
    final defaults = IsarAppSettings.defaults();
    await _fs.appSettingsDoc.set(defaults.toFirestore());
    return defaults;
  }

  Future<IsarAppSettings> updateSettings({
    required IsarUserProfile actor,
    double? taxRate,
    double? serviceFeeRate,
    String? supportEmail,
    bool? maintenanceMode,
    String? maintenanceMessage,
    List<String>? featuredEventIds,
    int? maxTicketsPerOrder,
    String? currencyCode,
    String? currencySymbol,
    String? stripePublishableKey,
    bool? paymentSimulation,
  }) async {
    await getOrInitSettings();
    final updates = <String, dynamic>{
      'updatedAt': Timestamp.fromDate(DateTime.now()),
      'updatedByEmail': actor.email,
    };
    if (taxRate != null) updates['taxRate'] = taxRate;
    if (serviceFeeRate != null) updates['serviceFeeRate'] = serviceFeeRate;
    if (supportEmail != null) updates['supportEmail'] = supportEmail;
    if (maintenanceMode != null) updates['maintenanceMode'] = maintenanceMode;
    if (maintenanceMessage != null) {
      updates['maintenanceMessage'] = maintenanceMessage;
    }
    if (featuredEventIds != null) {
      updates['featuredEventIds'] = featuredEventIds;
    }
    if (maxTicketsPerOrder != null) {
      updates['maxTicketsPerOrder'] = maxTicketsPerOrder;
    }
    if (currencyCode != null) updates['currencyCode'] = currencyCode;
    if (currencySymbol != null) updates['currencySymbol'] = currencySymbol;
    if (stripePublishableKey != null) {
      updates['stripePublishableKey'] = stripePublishableKey;
    }
    if (paymentSimulation != null) {
      updates['paymentSimulation'] = paymentSimulation;
    }

    await _fs.appSettingsDoc.update(updates);
    await _audit(actor, 'settings.update', 'settings', 'app', null);
    return getOrInitSettings();
  }

  // ── Broadcasts ──

  Future<IsarBroadcastNotification> sendBroadcast({
    required IsarUserProfile actor,
    required String title,
    required String body,
    String category = 'system',
    String audience = 'all',
    String? actionRoute,
  }) async {
    final id = 'br-${_uuid.v4().substring(0, 8)}';
    final broadcast = IsarBroadcastNotification(
      broadcastId: id,
      title: title,
      body: body,
      category: category,
      actionRoute: actionRoute,
      audience: audience,
      sentAt: DateTime.now(),
      sentByEmail: actor.email,
    );
    await _fs.broadcasts.doc(id).set(broadcast.toFirestore());
    await _audit(actor, 'broadcast.send', 'broadcast', id,
        {'title': title, 'audience': audience});
    return broadcast;
  }

  Future<List<IsarBroadcastNotification>> listBroadcasts() async {
    final snap =
        await _fs.broadcasts.orderBy('sentAt', descending: true).get();
    return snap.docs.map(IsarBroadcastNotification.fromFirestore).toList();
  }

  // ── Audit log ──

  Future<List<IsarAdminAction>> auditLog({int limit = 100}) async {
    final snap = await _fs.adminActions
        .orderBy('at', descending: true)
        .limit(limit)
        .get();
    return snap.docs.map(IsarAdminAction.fromFirestore).toList();
  }

  Future<void> _audit(
    IsarUserProfile actor,
    String action,
    String entityType,
    String entityId,
    Map<String, dynamic>? details,
  ) async {
    final id = _uuid.v4();
    final entry = IsarAdminAction(
      id: id,
      actorEmail: actor.email,
      actorRole: actor.role,
      action: action,
      entityType: entityType,
      entityId: entityId,
      at: DateTime.now(),
      details: details == null ? null : jsonEncode(details),
    );
    await _fs.adminActions.doc(id).set(entry.toFirestore());
  }
}

// ────────────────────────────────────────────────────────────
// DTOs
// ────────────────────────────────────────────────────────────

class DashboardStats {
  final int totalUsers;
  final int totalEvents;
  final int publishedEvents;
  final int totalOrders;
  final int paidOrders;
  final int refundedOrders;
  final int totalTickets;
  final double revenue;
  final double refundedAmount;
  final double co2SavedKg;
  final Map<UserRole, int> byRole;
  final int suspendedUsers;

  const DashboardStats({
    required this.totalUsers,
    required this.totalEvents,
    required this.publishedEvents,
    required this.totalOrders,
    required this.paidOrders,
    required this.refundedOrders,
    required this.totalTickets,
    required this.revenue,
    required this.refundedAmount,
    required this.co2SavedKg,
    required this.byRole,
    required this.suspendedUsers,
  });
}

class AdminEventInput {
  final String eventId;
  final String name;
  final String category;
  final String duration;
  final String imageUrl;
  final String gradient;
  final String date;
  final String location;
  final String transport;
  final String? accommodation;
  final String pricingLabel;
  final double pricingAmount;
  final double? pricingSavings;
  final String? pricingSavingsText;
  final String currency;
  final List<String> genres;
  final List<String> badgeTypes;
  final List<String> badgeTexts;
  final String section;
  final int sortOrder;
  final bool isPublished;

  const AdminEventInput({
    this.eventId = '',
    required this.name,
    required this.category,
    required this.duration,
    required this.imageUrl,
    this.gradient = '',
    required this.date,
    required this.location,
    required this.transport,
    this.accommodation,
    required this.pricingLabel,
    required this.pricingAmount,
    this.pricingSavings,
    this.pricingSavingsText,
    this.currency = '€',
    required this.genres,
    this.badgeTypes = const [],
    this.badgeTexts = const [],
    this.section = 'upcoming',
    this.sortOrder = 0,
    this.isPublished = true,
  });

  factory AdminEventInput.fromEvent(IsarEvent e) => AdminEventInput(
        eventId: e.eventId,
        name: e.name,
        category: e.category,
        duration: e.duration,
        imageUrl: e.imageUrl,
        gradient: e.gradient,
        date: e.date,
        location: e.location,
        transport: e.transport,
        accommodation: e.accommodation,
        pricingLabel: e.pricingLabel,
        pricingAmount: e.pricingAmount,
        pricingSavings: e.pricingSavings,
        pricingSavingsText: e.pricingSavingsText,
        currency: e.currency,
        genres: e.genres,
        badgeTypes: e.badgeTypes,
        badgeTexts: e.badgeTexts,
        section: e.section,
        sortOrder: e.sortOrder,
        isPublished: e.isPublished,
      );
}

class PromoInput {
  final String code;
  final String label;
  final String emoji;
  final String discountType;
  final double discountValue;
  final double minSubtotal;
  final int maxUses;

  const PromoInput({
    required this.code,
    required this.label,
    this.emoji = '🎁',
    required this.discountType,
    required this.discountValue,
    this.minSubtotal = 0,
    this.maxUses = 0,
  });

  factory PromoInput.fromPromo(IsarPromoCode p) => PromoInput(
        code: p.code,
        label: p.label,
        emoji: p.emoji,
        discountType: p.discountType,
        discountValue: p.discountValue,
        minSubtotal: p.minSubtotal,
        maxUses: p.maxUses,
      );
}
