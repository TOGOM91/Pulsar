import 'dart:convert';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/app_database.dart';
import '../domain/role.dart';

/// Single entry point for all admin operations. Writes are audit-logged.
class AdminRepository {
  final AppDatabase _db;
  static const _uuid = Uuid();
  static const _settingsKey = 'app';

  AdminRepository(this._db);

  // ── Stats ──

  Future<DashboardStats> computeStats() async {
    final users = await _db.select(_db.isarUserProfiles).get();
    final events = await _db.select(_db.isarEvents).get();
    final orders = await _db.select(_db.isarOrders).get();
    final tickets = await _db.select(_db.isarTickets).get();

    final paid = orders.where((o) => o.status == 'paid').toList();
    final refunded = orders.where((o) => o.status == 'refunded').toList();
    final revenue = paid.fold<double>(0, (s, o) => s + o.total);
    final refundedAmount =
        refunded.fold<double>(0, (s, o) => s + (o.refundAmount ?? o.total));
    final co2 = users.fold<double>(0, (s, u) => s + u.co2SavedKg);

    final byRole = <UserRole, int>{
      for (final r in UserRole.values) r: 0,
    };
    var suspended = 0;
    for (final u in users) {
      byRole[UserRole.fromWire(u.role)] =
          (byRole[UserRole.fromWire(u.role)] ?? 0) + 1;
      if (u.isSuspended) suspended++;
    }

    return DashboardStats(
      totalUsers: users.length,
      totalEvents: events.length,
      publishedEvents: events.where((e) => e.isPublished).length,
      totalOrders: orders.length,
      paidOrders: paid.length,
      refundedOrders: refunded.length,
      totalTickets: tickets.length,
      revenue: revenue,
      refundedAmount: refundedAmount,
      co2SavedKg: co2,
      byRole: byRole,
      suspendedUsers: suspended,
    );
  }

  // ── Events ──

  Future<List<IsarEvent>> listEvents() {
    return (_db.select(_db.isarEvents)
          ..orderBy([(e) => OrderingTerm(expression: e.sortOrder)]))
        .get();
  }

  Future<IsarEvent?> findEvent(String eventId) {
    return (_db.select(_db.isarEvents)
          ..where((e) => e.eventId.equals(eventId)))
        .getSingleOrNull();
  }

  Future<IsarEvent> createEvent({
    required IsarUserProfile actor,
    required AdminEventInput input,
  }) async {
    final id = input.eventId.isEmpty
        ? 'evt-${_uuid.v4().substring(0, 8)}'
        : input.eventId;
    final gradient = input.gradient.isEmpty
        ? 'linear-gradient(135deg, #7C3AED 0%, #06B6D4 100%)'
        : input.gradient;
    final section = input.section.isEmpty ? 'upcoming' : input.section;
    final currency = input.currency.isEmpty ? '€' : input.currency;
    final now = DateTime.now();

    await _db.into(_db.isarEvents).insert(IsarEventsCompanion.insert(
          eventId: id,
          name: input.name,
          category: input.category,
          duration: input.duration,
          imageUrl: input.imageUrl,
          gradient: gradient,
          date: input.date,
          location: input.location,
          transport: input.transport,
          accommodation: Value(input.accommodation),
          pricingLabel: input.pricingLabel,
          pricingAmount: input.pricingAmount,
          pricingSavings: Value(input.pricingSavings),
          pricingSavingsText: Value(input.pricingSavingsText),
          currency: Value(currency),
          genres: Value(input.genres),
          badgeTypes: Value(input.badgeTypes),
          badgeTexts: Value(input.badgeTexts),
          section: section,
          sortOrder: Value(input.sortOrder),
          isPublished: Value(input.isPublished),
          createdAt: Value(now),
          updatedAt: Value(now),
          updatedByEmail: Value(actor.email),
        ));

    final event = await findEvent(id);
    await _audit(actor, 'event.create', 'event', id, {'name': input.name});
    return event!;
  }

  Future<IsarEvent?> updateEvent({
    required IsarUserProfile actor,
    required String eventId,
    required AdminEventInput input,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return null;

    await (_db.update(_db.isarEvents)
          ..where((e) => e.eventId.equals(eventId)))
        .write(IsarEventsCompanion(
      name: Value(input.name),
      category: Value(input.category),
      duration: Value(input.duration),
      imageUrl: Value(input.imageUrl),
      gradient: input.gradient.isEmpty
          ? const Value.absent()
          : Value(input.gradient),
      date: Value(input.date),
      location: Value(input.location),
      transport: Value(input.transport),
      accommodation: Value(input.accommodation),
      pricingLabel: Value(input.pricingLabel),
      pricingAmount: Value(input.pricingAmount),
      pricingSavings: Value(input.pricingSavings),
      pricingSavingsText: Value(input.pricingSavingsText),
      currency:
          input.currency.isEmpty ? const Value.absent() : Value(input.currency),
      genres: Value(input.genres),
      badgeTypes: Value(input.badgeTypes),
      badgeTexts: Value(input.badgeTexts),
      section:
          input.section.isEmpty ? const Value.absent() : Value(input.section),
      sortOrder: Value(input.sortOrder),
      isPublished: Value(input.isPublished),
      updatedAt: Value(DateTime.now()),
      updatedByEmail: Value(actor.email),
    ));

    await _audit(actor, 'event.update', 'event', eventId, {'name': input.name});
    return findEvent(eventId);
  }

  Future<void> deleteEvent({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    await (_db.delete(_db.isarEvents)
          ..where((e) => e.eventId.equals(eventId)))
        .go();
    await _audit(actor, 'event.delete', 'event', eventId, {'name': event.name});
  }

  Future<void> toggleEventPublished({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    final newPublished = !event.isPublished;
    await (_db.update(_db.isarEvents)
          ..where((e) => e.eventId.equals(eventId)))
        .write(IsarEventsCompanion(
      isPublished: Value(newPublished),
      updatedAt: Value(DateTime.now()),
      updatedByEmail: Value(actor.email),
    ));
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
    return (_db.select(_db.isarUserProfiles)
          ..orderBy([(u) => OrderingTerm.desc(u.createdAt)]))
        .get();
  }

  Future<IsarUserProfile?> findUser(String email) {
    return (_db.select(_db.isarUserProfiles)
          ..where((u) => u.email.equals(email.toLowerCase().trim())))
        .getSingleOrNull();
  }

  Future<IsarUserProfile?> changeRole({
    required IsarUserProfile actor,
    required String targetEmail,
    required UserRole newRole,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    if (target.email == actor.email && newRole != UserRole.owner) {
      // Refuse self-demotion if last owner.
      final owners = await (_db.select(_db.isarUserProfiles)
            ..where((u) => u.role.equals('owner')))
          .get();
      if (owners.length <= 1) return target;
    }
    final previous = target.role;
    await (_db.update(_db.isarUserProfiles)
          ..where((u) => u.email.equals(target.email)))
        .write(IsarUserProfilesCompanion(role: Value(newRole.wire)));
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
    await (_db.update(_db.isarUserProfiles)
          ..where((u) => u.email.equals(target.email)))
        .write(IsarUserProfilesCompanion(
      isSuspended: const Value(true),
      suspendedReason: Value(reason),
      suspendedAt: Value(DateTime.now()),
    ));
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
    await (_db.update(_db.isarUserProfiles)
          ..where((u) => u.email.equals(target.email)))
        .write(const IsarUserProfilesCompanion(
      isSuspended: Value(false),
      suspendedReason: Value(null),
      suspendedAt: Value(null),
    ));
    await _audit(actor, 'user.reinstate', 'user', target.email, null);
    return findUser(target.email);
  }

  // ── Orders ──

  Future<List<IsarOrder>> listOrders({String? statusFilter}) async {
    final q = _db.select(_db.isarOrders);
    if (statusFilter != null) {
      q.where((o) => o.status.equals(statusFilter));
    }
    q.orderBy([(o) => OrderingTerm.desc(o.placedAt)]);
    return q.get();
  }

  Future<IsarOrder?> findOrder(String orderId) {
    return (_db.select(_db.isarOrders)
          ..where((o) => o.orderId.equals(orderId)))
        .getSingleOrNull();
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

    await (_db.update(_db.isarOrders)
          ..where((o) => o.orderId.equals(orderId)))
        .write(IsarOrdersCompanion(
      status: Value(newStatus),
      refundedAt: Value(DateTime.now()),
      refundReason: Value(reason),
      refundAmount: Value(amount),
      refundedByEmail: Value(actor.email),
    ));

    for (final ticketId in order.ticketIds) {
      final ticket = await (_db.select(_db.isarTickets)
            ..where((t) => t.ticketId.equals(ticketId)))
          .getSingleOrNull();
      if (ticket != null && ticket.status == 'confirmed') {
        await (_db.update(_db.isarTickets)
              ..where((t) => t.isarId.equals(ticket.isarId)))
            .write(IsarTicketsCompanion(
          status: const Value('cancelled'),
          cancelledAt: Value(DateTime.now()),
          refundAmount: Value(amount / order.ticketIds.length),
        ));
      }
    }

    await _audit(actor, 'order.refund', 'order', orderId,
        {'amount': amount, 'reason': reason});
    return findOrder(orderId);
  }

  // ── Promos ──

  Future<List<IsarPromoCode>> listPromos() async {
    return (_db.select(_db.isarPromoCodes)
          ..orderBy([(p) => OrderingTerm.desc(p.createdAt)]))
        .get();
  }

  Future<IsarPromoCode?> findPromo(String code) {
    return (_db.select(_db.isarPromoCodes)
          ..where((p) => p.code.equals(code.toUpperCase())))
        .getSingleOrNull();
  }

  Future<IsarPromoCode> savePromo({
    required IsarUserProfile actor,
    required PromoInput input,
  }) async {
    final code = input.code.toUpperCase().trim();
    final existing = await findPromo(code);
    if (existing != null) {
      await (_db.update(_db.isarPromoCodes)
            ..where((p) => p.code.equals(code)))
          .write(IsarPromoCodesCompanion(
        label: Value(input.label),
        emoji: Value(input.emoji),
        discountType: Value(input.discountType),
        discountValue: Value(input.discountValue),
        minSubtotal: Value(input.minSubtotal),
        maxUses: Value(input.maxUses),
      ));
      await _audit(actor, 'promo.save', 'promo', code,
          {'discountValue': input.discountValue});
      return (await findPromo(code))!;
    }
    await _db.into(_db.isarPromoCodes).insert(IsarPromoCodesCompanion.insert(
          code: code,
          label: input.label,
          emoji: input.emoji,
          discountType: input.discountType,
          discountValue: input.discountValue,
          minSubtotal: input.minSubtotal,
          maxUses: input.maxUses,
          createdAt: DateTime.now(),
          createdByEmail: Value(actor.email),
        ));
    await _audit(actor, 'promo.save', 'promo', code,
        {'discountValue': input.discountValue});
    return (await findPromo(code))!;
  }

  Future<void> deletePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    await (_db.delete(_db.isarPromoCodes)
          ..where((p) => p.code.equals(code.toUpperCase())))
        .go();
    await _audit(actor, 'promo.delete', 'promo', code, null);
  }

  Future<IsarPromoCode?> togglePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    final p = await findPromo(code);
    if (p == null) return null;
    final next = !p.isActive;
    await (_db.update(_db.isarPromoCodes)
          ..where((x) => x.code.equals(code.toUpperCase())))
        .write(IsarPromoCodesCompanion(isActive: Value(next)));
    await _audit(actor, next ? 'promo.enable' : 'promo.disable', 'promo', code,
        null);
    return findPromo(code);
  }

  // ── App settings ──

  Future<IsarAppSettings> getOrInitSettings() async {
    final existing = await (_db.select(_db.isarAppSettingsTable)
          ..where((s) => s.key.equals(_settingsKey)))
        .getSingleOrNull();
    if (existing != null) return existing;
    await _db
        .into(_db.isarAppSettingsTable)
        .insert(IsarAppSettingsTableCompanion.insert(
          key: _settingsKey,
          taxRate: 0.20,
          serviceFeeRate: 0.05,
          supportEmail: 'support@pulsar.app',
          maintenanceMode: false,
          maintenanceMessage: '',
          maxTicketsPerOrder: 10,
          currencyCode: 'EUR',
          currencySymbol: '€',
          updatedAt: DateTime.now(),
        ));
    return (await (_db.select(_db.isarAppSettingsTable)
              ..where((s) => s.key.equals(_settingsKey)))
            .getSingle());
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
    await (_db.update(_db.isarAppSettingsTable)
          ..where((s) => s.key.equals(_settingsKey)))
        .write(IsarAppSettingsTableCompanion(
      taxRate: taxRate != null ? Value(taxRate) : const Value.absent(),
      serviceFeeRate: serviceFeeRate != null
          ? Value(serviceFeeRate)
          : const Value.absent(),
      supportEmail:
          supportEmail != null ? Value(supportEmail) : const Value.absent(),
      maintenanceMode: maintenanceMode != null
          ? Value(maintenanceMode)
          : const Value.absent(),
      maintenanceMessage: maintenanceMessage != null
          ? Value(maintenanceMessage)
          : const Value.absent(),
      featuredEventIds: featuredEventIds != null
          ? Value(featuredEventIds)
          : const Value.absent(),
      maxTicketsPerOrder: maxTicketsPerOrder != null
          ? Value(maxTicketsPerOrder)
          : const Value.absent(),
      currencyCode:
          currencyCode != null ? Value(currencyCode) : const Value.absent(),
      currencySymbol: currencySymbol != null
          ? Value(currencySymbol)
          : const Value.absent(),
      stripePublishableKey: stripePublishableKey != null
          ? Value(stripePublishableKey)
          : const Value.absent(),
      paymentSimulation: paymentSimulation != null
          ? Value(paymentSimulation)
          : const Value.absent(),
      updatedAt: Value(DateTime.now()),
      updatedByEmail: Value(actor.email),
    ));
    await _audit(actor, 'settings.update', 'settings', _settingsKey, null);
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
    await _db.into(_db.isarBroadcastNotifications).insert(
          IsarBroadcastNotificationsCompanion.insert(
            broadcastId: id,
            title: title,
            body: body,
            category: category,
            actionRoute: Value(actionRoute),
            audience: audience,
            sentAt: DateTime.now(),
            sentByEmail: actor.email,
          ),
        );
    await _audit(actor, 'broadcast.send', 'broadcast', id,
        {'title': title, 'audience': audience});
    return (_db.select(_db.isarBroadcastNotifications)
          ..where((b) => b.broadcastId.equals(id)))
        .getSingle();
  }

  Future<List<IsarBroadcastNotification>> listBroadcasts() async {
    return (_db.select(_db.isarBroadcastNotifications)
          ..orderBy([(b) => OrderingTerm.desc(b.sentAt)]))
        .get();
  }

  // ── Audit log ──

  Future<List<IsarAdminAction>> auditLog({int limit = 100}) async {
    return (_db.select(_db.isarAdminActions)
          ..orderBy([(a) => OrderingTerm.desc(a.at)])
          ..limit(limit))
        .get();
  }

  Future<void> _audit(
    IsarUserProfile actor,
    String action,
    String entityType,
    String entityId,
    Map<String, dynamic>? details,
  ) async {
    await _db.into(_db.isarAdminActions).insert(IsarAdminActionsCompanion.insert(
          actorEmail: actor.email,
          actorRole: actor.role,
          action: action,
          entityType: entityType,
          entityId: entityId,
          at: DateTime.now(),
          details: Value(details == null ? null : jsonEncode(details)),
        ));
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
