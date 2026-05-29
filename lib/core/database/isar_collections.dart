import 'package:isar/isar.dart';

part 'isar_collections.g.dart';

/// Isar collection for persisting events locally (offline-first).
/// Admin-managed: owner/collaborator can CRUD via the admin module.
@collection
class IsarEvent {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String eventId;

  late String name;
  late String category;
  late String duration;
  late String imageUrl;
  late String gradient;
  late String date;
  late String location;
  late String transport;
  String? accommodation;
  late String pricingLabel;
  late double pricingAmount;
  double? pricingSavings;
  String? pricingSavingsText;
  late String currency;
  late List<String> genres;
  late List<String> badgeTypes;
  late List<String> badgeTexts;
  late bool isFavorite;
  late String section;
  late int sortOrder;

  // Admin metadata
  bool isPublished = true;
  int totalTicketsSold = 0;
  double totalRevenue = 0.0;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? updatedByEmail;
}

/// Isar collection for user tickets — full lifecycle (confirm/use/transfer/cancel/expire).
@collection
class IsarTicket {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String ticketId;

  late String eventId;
  late String eventName;
  late String eventDate;
  late String eventLocation;
  String? eventImageUrl;
  late double price;
  late String ticketType;
  late String status;
  late DateTime purchaseDate;
  String? qrCodeData;
  String? seatInfo;
  String? chosenTransportLabel;
  double? chosenTransportCo2SavedKg;

  // Transfer
  String? transferredToEmail;
  DateTime? transferredAt;

  // Cancellation
  DateTime? cancelledAt;
  double? refundAmount;

  // Computed event date for auto-expiry (parsed from eventDate string).
  DateTime? eventDateParsed;
  late String ownerEmail; // who owns this ticket (scoped per user)

  // Order linkage
  String? orderId;
}

/// Isar collection for cart items, scoped per user.
@collection
class IsarCartItem {
  Id isarId = Isar.autoIncrement;

  @Index()
  late String ownerEmail;

  @Index()
  late String eventId;

  late String eventName;
  late String eventDate;
  late String eventLocation;
  String? eventImageUrl;
  late double unitPrice;
  late int quantity;
  late String ticketType;
  String? transportOption;
  double? transportPrice;
  String? accommodationOption;
  double? accommodationPrice;
}

/// Registered user accounts — indexed by email (unique, lowercase).
/// Multi-account capable: signOut clears the session but never deletes profiles.
@collection
class IsarUserProfile {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true, caseSensitive: false)
  late String email;

  late String name;
  late String passwordHash;
  String? avatarUrl;
  String? phone;
  String? bio;
  late int memberSince;
  late List<String> genres;
  late double budgetMax;
  late String locationName;
  late String language;
  late bool darkMode;
  late bool notificationsEnabled;
  bool emailNotificationsEnabled = true;
  bool socialNotificationsEnabled = false;
  late bool ecoMode;
  bool showCarbonFootprint = true;
  late bool isOnboarded;
  late int eventsBooked;
  late double co2SavedKg;
  late double moneySavedEur;
  late int percentile;
  late DateTime createdAt;
  DateTime? lastLoginAt;

  // Admin RBAC — 'user', 'collaborator', 'owner'
  String role = 'user';
  bool isSuspended = false;
  String? suspendedReason;
  DateTime? suspendedAt;
}

/// Singleton session record — tracks the currently logged-in user.
@collection
class IsarAuthSession {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key;

  String? activeEmail;
  DateTime? loggedInAt;
}

/// Favorite events — scoped per user.
@collection
class IsarFavorite {
  Id isarId = Isar.autoIncrement;

  @Index()
  late String userEmail;

  @Index()
  late String eventId;

  late DateTime addedAt;
}

/// Customer orders — created at checkout, linked to one or many tickets.
@collection
class IsarOrder {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String orderId;

  @Index()
  late String customerEmail;

  late DateTime placedAt;
  late double subtotal;
  late double discount;
  late double serviceFee;
  late double tax;
  late double total;
  late String currency;
  String? promoCode;
  late String paymentMethod;
  late String paymentBrand;
  String? paymentLast4;

  /// 'pending', 'paid', 'failed', 'refunded', 'partial_refund'
  @Index()
  late String status;

  late int itemCount;
  late List<String> ticketIds;
  String? failureReason;

  // Refund tracking
  String? refundReason;
  DateTime? refundedAt;
  double? refundAmount;
  String? refundedByEmail;
}

/// App-wide settings managed by owner.
@collection
class IsarAppSettings {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key; // singleton: 'app'

  late double taxRate;
  late double serviceFeeRate;
  late String supportEmail;
  late bool maintenanceMode;
  late String maintenanceMessage;
  late List<String> featuredEventIds;
  late int maxTicketsPerOrder;
  late String currencyCode;
  late String currencySymbol;
  late DateTime updatedAt;
  String? updatedByEmail;
  // Stripe / payment provider config (kept on-device, never logged).
  String? stripePublishableKey;
  bool paymentSimulation = true;
}

/// Promo codes — created by owner/collaborator, used at checkout.
@collection
class IsarPromoCode {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true, caseSensitive: false)
  late String code;

  late String label;
  late String emoji;

  /// 'percent' or 'fixed'
  late String discountType;
  late double discountValue;
  late double minSubtotal;
  DateTime? expiresAt;
  late int maxUses;
  late int usedCount;
  late bool isActive;
  late DateTime createdAt;
  String? createdByEmail;
}

/// Saved payment methods, scoped per user.
@collection
class IsarPaymentMethod {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String methodId;

  @Index()
  late String ownerEmail;

  /// 'visa', 'mastercard', 'amex', 'applepay', 'googlepay', 'paypal'
  late String brand;
  late String last4;
  late String holder;
  late String expiry;
  late bool isDefault;
  late DateTime createdAt;
}

/// Audit log — every admin action is recorded.
@collection
class IsarAdminAction {
  Id isarId = Isar.autoIncrement;

  @Index()
  late String actorEmail;

  late String actorRole;

  /// e.g. 'event.create', 'event.update', 'event.delete',
  /// 'user.role.change', 'user.suspend', 'order.refund',
  /// 'settings.update', 'promo.create', 'promo.delete', 'promo.toggle'
  @Index()
  late String action;

  late String entityType;
  late String entityId;
  late DateTime at;
  String? details;
}

/// Push notifications composed by admins, persisted for the audit log
/// and replayed locally on the receiving device.
@collection
class IsarBroadcastNotification {
  Id isarId = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String broadcastId;

  late String title;
  late String body;
  late String category;
  String? actionRoute;

  /// 'all', 'role:owner', 'role:collaborator', 'role:user', 'email:user@x'
  late String audience;

  late DateTime sentAt;
  late String sentByEmail;
}
