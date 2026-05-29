import 'dart:convert';
import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import '../../../core/database/isar_collections.dart';
import '../domain/role.dart';

/// Single entry point for all admin operations. Writes are audit-logged.
///
/// Layered intentionally on top of Isar : same offline-first model the rest
/// of the app uses, easy to later mirror to Firestore.
class AdminRepository {
  final Isar _isar;
  static const _uuid = Uuid();
  static const _settingsKey = 'app';

  AdminRepository(this._isar);

  // ────────────────────────────────────────────────────────────
  // Dashboard / stats
  // ────────────────────────────────────────────────────────────

  Future<DashboardStats> computeStats() async {
    final users = await _isar.isarUserProfiles.where().findAll();
    final events = await _isar.isarEvents.where().findAll();
    final orders = await _isar.isarOrders.where().findAll();
    final tickets = await _isar.isarTickets.where().findAll();

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

  // ────────────────────────────────────────────────────────────
  // Events CRUD
  // ────────────────────────────────────────────────────────────

  Future<List<IsarEvent>> listEvents() {
    return _isar.isarEvents.where().sortBySortOrder().findAll();
  }

  Future<IsarEvent?> findEvent(String eventId) {
    return _isar.isarEvents.filter().eventIdEqualTo(eventId).findFirst();
  }

  Future<IsarEvent> createEvent({
    required IsarUserProfile actor,
    required AdminEventInput input,
  }) async {
    final event = IsarEvent()
      ..eventId = input.eventId.isEmpty
          ? 'evt-${_uuid.v4().substring(0, 8)}'
          : input.eventId
      ..name = input.name
      ..category = input.category
      ..duration = input.duration
      ..imageUrl = input.imageUrl
      ..gradient = input.gradient.isEmpty
          ? 'linear-gradient(135deg, #7C3AED 0%, #06B6D4 100%)'
          : input.gradient
      ..date = input.date
      ..location = input.location
      ..transport = input.transport
      ..accommodation = input.accommodation
      ..pricingLabel = input.pricingLabel
      ..pricingAmount = input.pricingAmount
      ..pricingSavings = input.pricingSavings
      ..pricingSavingsText = input.pricingSavingsText
      ..currency = input.currency.isEmpty ? '€' : input.currency
      ..genres = input.genres
      ..badgeTypes = input.badgeTypes
      ..badgeTexts = input.badgeTexts
      ..isFavorite = false
      ..section = input.section.isEmpty ? 'upcoming' : input.section
      ..sortOrder = input.sortOrder
      ..isPublished = input.isPublished
      ..createdAt = DateTime.now()
      ..updatedAt = DateTime.now()
      ..updatedByEmail = actor.email;

    await _isar.writeTxn(() async {
      await _isar.isarEvents.put(event);
    });
    await _audit(actor, 'event.create', 'event', event.eventId,
        {'name': event.name});
    return event;
  }

  Future<IsarEvent?> updateEvent({
    required IsarUserProfile actor,
    required String eventId,
    required AdminEventInput input,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return null;

    event
      ..name = input.name
      ..category = input.category
      ..duration = input.duration
      ..imageUrl = input.imageUrl
      ..gradient = input.gradient.isEmpty ? event.gradient : input.gradient
      ..date = input.date
      ..location = input.location
      ..transport = input.transport
      ..accommodation = input.accommodation
      ..pricingLabel = input.pricingLabel
      ..pricingAmount = input.pricingAmount
      ..pricingSavings = input.pricingSavings
      ..pricingSavingsText = input.pricingSavingsText
      ..currency = input.currency.isEmpty ? event.currency : input.currency
      ..genres = input.genres
      ..badgeTypes = input.badgeTypes
      ..badgeTexts = input.badgeTexts
      ..section = input.section.isEmpty ? event.section : input.section
      ..sortOrder = input.sortOrder
      ..isPublished = input.isPublished
      ..updatedAt = DateTime.now()
      ..updatedByEmail = actor.email;

    await _isar.writeTxn(() async {
      await _isar.isarEvents.put(event);
    });
    await _audit(actor, 'event.update', 'event', eventId,
        {'name': event.name});
    return event;
  }

  Future<void> deleteEvent({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    await _isar.writeTxn(() async {
      await _isar.isarEvents.delete(event.isarId);
    });
    await _audit(actor, 'event.delete', 'event', eventId,
        {'name': event.name});
  }

  Future<void> toggleEventPublished({
    required IsarUserProfile actor,
    required String eventId,
  }) async {
    final event = await findEvent(eventId);
    if (event == null) return;
    event
      ..isPublished = !event.isPublished
      ..updatedAt = DateTime.now()
      ..updatedByEmail = actor.email;
    await _isar.writeTxn(() async {
      await _isar.isarEvents.put(event);
    });
    await _audit(
      actor,
      event.isPublished ? 'event.publish' : 'event.unpublish',
      'event',
      eventId,
      {'name': event.name},
    );
  }

  // ────────────────────────────────────────────────────────────
  // Users management
  // ────────────────────────────────────────────────────────────

  Future<List<IsarUserProfile>> listUsers() async {
    final users = await _isar.isarUserProfiles.where().findAll();
    users.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return users;
  }

  Future<IsarUserProfile?> findUser(String email) {
    return _isar.isarUserProfiles
        .filter()
        .emailEqualTo(email.toLowerCase().trim(), caseSensitive: false)
        .findFirst();
  }

  /// Change a user's role. Only owners can call this.
  Future<IsarUserProfile?> changeRole({
    required IsarUserProfile actor,
    required String targetEmail,
    required UserRole newRole,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    if (target.email == actor.email && newRole != UserRole.owner) {
      // Refuse self-demotion to avoid losing the last owner.
      final owners = await _isar.isarUserProfiles
          .filter()
          .roleEqualTo('owner')
          .findAll();
      if (owners.length <= 1) return target;
    }
    final previous = target.role;
    target.role = newRole.wire;
    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.put(target);
    });
    await _audit(actor, 'user.role.change', 'user', target.email,
        {'from': previous, 'to': newRole.wire});
    return target;
  }

  Future<IsarUserProfile?> suspendUser({
    required IsarUserProfile actor,
    required String targetEmail,
    required String reason,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    target
      ..isSuspended = true
      ..suspendedReason = reason
      ..suspendedAt = DateTime.now();
    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.put(target);
    });
    await _audit(actor, 'user.suspend', 'user', target.email,
        {'reason': reason});
    return target;
  }

  Future<IsarUserProfile?> reinstateUser({
    required IsarUserProfile actor,
    required String targetEmail,
  }) async {
    final target = await findUser(targetEmail);
    if (target == null) return null;
    target
      ..isSuspended = false
      ..suspendedReason = null
      ..suspendedAt = null;
    await _isar.writeTxn(() async {
      await _isar.isarUserProfiles.put(target);
    });
    await _audit(actor, 'user.reinstate', 'user', target.email, null);
    return target;
  }

  // ────────────────────────────────────────────────────────────
  // Orders
  // ────────────────────────────────────────────────────────────

  Future<List<IsarOrder>> listOrders({String? statusFilter}) async {
    final all = await _isar.isarOrders.where().findAll();
    final filtered = statusFilter == null
        ? all
        : all.where((o) => o.status == statusFilter).toList();
    filtered.sort((a, b) => b.placedAt.compareTo(a.placedAt));
    return filtered;
  }

  Future<IsarOrder?> findOrder(String orderId) {
    return _isar.isarOrders.filter().orderIdEqualTo(orderId).findFirst();
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
    order
      ..status = (partialAmount != null && partialAmount < order.total)
          ? 'partial_refund'
          : 'refunded'
      ..refundedAt = DateTime.now()
      ..refundReason = reason
      ..refundAmount = amount
      ..refundedByEmail = actor.email;

    // Cancel related tickets
    for (final ticketId in order.ticketIds) {
      final ticket = await _isar.isarTickets
          .filter()
          .ticketIdEqualTo(ticketId)
          .findFirst();
      if (ticket != null && ticket.status == 'active') {
        ticket
          ..status = 'cancelled'
          ..cancelledAt = DateTime.now()
          ..refundAmount = amount / order.ticketIds.length;
        await _isar.writeTxn(() async {
          await _isar.isarTickets.put(ticket);
        });
      }
    }

    await _isar.writeTxn(() async {
      await _isar.isarOrders.put(order);
    });
    await _audit(actor, 'order.refund', 'order', orderId,
        {'amount': amount, 'reason': reason});
    return order;
  }

  // ────────────────────────────────────────────────────────────
  // Promo codes
  // ────────────────────────────────────────────────────────────

  Future<List<IsarPromoCode>> listPromos() async {
    final all = await _isar.isarPromoCodes.where().findAll();
    all.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return all;
  }

  Future<IsarPromoCode?> findPromo(String code) {
    return _isar.isarPromoCodes
        .filter()
        .codeEqualTo(code.toUpperCase(), caseSensitive: false)
        .findFirst();
  }

  Future<IsarPromoCode> savePromo({
    required IsarUserProfile actor,
    required IsarPromoCode promo,
  }) async {
    promo
      ..code = promo.code.toUpperCase().trim()
      ..createdByEmail = promo.createdByEmail ?? actor.email
      ..createdAt = promo.isarId == Isar.autoIncrement
          ? DateTime.now()
          : promo.createdAt;
    await _isar.writeTxn(() async {
      await _isar.isarPromoCodes.put(promo);
    });
    await _audit(actor, 'promo.save', 'promo', promo.code,
        {'discountValue': promo.discountValue});
    return promo;
  }

  Future<void> deletePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    final p = await findPromo(code);
    if (p == null) return;
    await _isar.writeTxn(() async {
      await _isar.isarPromoCodes.delete(p.isarId);
    });
    await _audit(actor, 'promo.delete', 'promo', code, null);
  }

  Future<IsarPromoCode?> togglePromo({
    required IsarUserProfile actor,
    required String code,
  }) async {
    final p = await findPromo(code);
    if (p == null) return null;
    p.isActive = !p.isActive;
    await _isar.writeTxn(() async {
      await _isar.isarPromoCodes.put(p);
    });
    await _audit(actor, p.isActive ? 'promo.enable' : 'promo.disable',
        'promo', code, null);
    return p;
  }

  // ────────────────────────────────────────────────────────────
  // App settings
  // ────────────────────────────────────────────────────────────

  Future<IsarAppSettings> getOrInitSettings() async {
    final existing = await _isar.isarAppSettings
        .filter()
        .keyEqualTo(_settingsKey)
        .findFirst();
    if (existing != null) return existing;
    final defaults = IsarAppSettings()
      ..key = _settingsKey
      ..taxRate = 0.20
      ..serviceFeeRate = 0.05
      ..supportEmail = 'support@pulsar.app'
      ..maintenanceMode = false
      ..maintenanceMessage = ''
      ..featuredEventIds = const []
      ..maxTicketsPerOrder = 10
      ..currencyCode = 'EUR'
      ..currencySymbol = '€'
      ..updatedAt = DateTime.now()
      ..paymentSimulation = true;
    await _isar.writeTxn(() async {
      await _isar.isarAppSettings.put(defaults);
    });
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
    final settings = await getOrInitSettings();
    if (taxRate != null) settings.taxRate = taxRate;
    if (serviceFeeRate != null) settings.serviceFeeRate = serviceFeeRate;
    if (supportEmail != null) settings.supportEmail = supportEmail;
    if (maintenanceMode != null) settings.maintenanceMode = maintenanceMode;
    if (maintenanceMessage != null) {
      settings.maintenanceMessage = maintenanceMessage;
    }
    if (featuredEventIds != null) {
      settings.featuredEventIds = featuredEventIds;
    }
    if (maxTicketsPerOrder != null) {
      settings.maxTicketsPerOrder = maxTicketsPerOrder;
    }
    if (currencyCode != null) settings.currencyCode = currencyCode;
    if (currencySymbol != null) settings.currencySymbol = currencySymbol;
    if (stripePublishableKey != null) {
      settings.stripePublishableKey = stripePublishableKey;
    }
    if (paymentSimulation != null) {
      settings.paymentSimulation = paymentSimulation;
    }
    settings
      ..updatedAt = DateTime.now()
      ..updatedByEmail = actor.email;

    await _isar.writeTxn(() async {
      await _isar.isarAppSettings.put(settings);
    });
    await _audit(actor, 'settings.update', 'settings', _settingsKey, null);
    return settings;
  }

  // ────────────────────────────────────────────────────────────
  // Broadcast notifications
  // ────────────────────────────────────────────────────────────

  Future<IsarBroadcastNotification> sendBroadcast({
    required IsarUserProfile actor,
    required String title,
    required String body,
    String category = 'system',
    String audience = 'all',
    String? actionRoute,
  }) async {
    final broadcast = IsarBroadcastNotification()
      ..broadcastId = 'br-${_uuid.v4().substring(0, 8)}'
      ..title = title
      ..body = body
      ..category = category
      ..audience = audience
      ..actionRoute = actionRoute
      ..sentAt = DateTime.now()
      ..sentByEmail = actor.email;
    await _isar.writeTxn(() async {
      await _isar.isarBroadcastNotifications.put(broadcast);
    });
    await _audit(actor, 'broadcast.send', 'broadcast', broadcast.broadcastId,
        {'title': title, 'audience': audience});
    return broadcast;
  }

  Future<List<IsarBroadcastNotification>> listBroadcasts() async {
    final all = await _isar.isarBroadcastNotifications.where().findAll();
    all.sort((a, b) => b.sentAt.compareTo(a.sentAt));
    return all;
  }

  // ────────────────────────────────────────────────────────────
  // Audit log
  // ────────────────────────────────────────────────────────────

  Future<List<IsarAdminAction>> auditLog({int limit = 100}) async {
    final actions = await _isar.isarAdminActions.where().findAll();
    actions.sort((a, b) => b.at.compareTo(a.at));
    return actions.take(limit).toList();
  }

  Future<void> _audit(
    IsarUserProfile actor,
    String action,
    String entityType,
    String entityId,
    Map<String, dynamic>? details,
  ) async {
    final record = IsarAdminAction()
      ..actorEmail = actor.email
      ..actorRole = actor.role
      ..action = action
      ..entityType = entityType
      ..entityId = entityId
      ..at = DateTime.now()
      ..details = details == null ? null : jsonEncode(details);
    await _isar.writeTxn(() async {
      await _isar.isarAdminActions.put(record);
    });
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
