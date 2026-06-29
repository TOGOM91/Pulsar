import 'package:cloud_firestore/cloud_firestore.dart';

// ─────────────────────────────────────────────────────────────────
// Helpers — Firestore ↔ Dart
// ─────────────────────────────────────────────────────────────────

DateTime? _ts(dynamic v) {
  if (v == null) return null;
  if (v is Timestamp) return v.toDate();
  if (v is DateTime) return v;
  if (v is int) return DateTime.fromMillisecondsSinceEpoch(v);
  return null;
}

DateTime _tsRequired(dynamic v) => _ts(v) ?? DateTime.now();

List<String> _strList(dynamic v) {
  if (v == null) return const [];
  if (v is List) return v.map((e) => e.toString()).toList();
  return const [];
}

double _double(dynamic v, [double fallback = 0]) {
  if (v == null) return fallback;
  if (v is num) return v.toDouble();
  return fallback;
}

int _int(dynamic v, [int fallback = 0]) {
  if (v == null) return fallback;
  if (v is num) return v.toInt();
  return fallback;
}

bool _bool(dynamic v, [bool fallback = false]) {
  if (v == null) return fallback;
  if (v is bool) return v;
  return fallback;
}

// ─────────────────────────────────────────────────────────────────
// Models — backward-compatible names (IsarXxx) to limit UI churn.
// Each has fromFirestore + toFirestore for Cloud Firestore.
// ─────────────────────────────────────────────────────────────────

class IsarEvent {
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
  final bool isFavorite;
  final String section;
  final int sortOrder;
  final bool isPublished;
  final int totalTicketsSold;
  final double totalRevenue;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? updatedByEmail;

  const IsarEvent({
    required this.eventId,
    required this.name,
    required this.category,
    required this.duration,
    required this.imageUrl,
    required this.gradient,
    required this.date,
    required this.location,
    required this.transport,
    this.accommodation,
    required this.pricingLabel,
    required this.pricingAmount,
    this.pricingSavings,
    this.pricingSavingsText,
    this.currency = '€',
    this.genres = const [],
    this.badgeTypes = const [],
    this.badgeTexts = const [],
    this.isFavorite = false,
    required this.section,
    this.sortOrder = 0,
    this.isPublished = true,
    this.totalTicketsSold = 0,
    this.totalRevenue = 0,
    this.createdAt,
    this.updatedAt,
    this.updatedByEmail,
  });

  factory IsarEvent.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarEvent(
      eventId: doc.id,
      name: d['name']?.toString() ?? '',
      category: d['category']?.toString() ?? '',
      duration: d['duration']?.toString() ?? '',
      imageUrl: d['imageUrl']?.toString() ?? '',
      gradient: d['gradient']?.toString() ?? '',
      date: d['date']?.toString() ?? '',
      location: d['location']?.toString() ?? '',
      transport: d['transport']?.toString() ?? '',
      accommodation: d['accommodation']?.toString(),
      pricingLabel: d['pricingLabel']?.toString() ?? '',
      pricingAmount: _double(d['pricingAmount']),
      pricingSavings: d['pricingSavings'] == null ? null : _double(d['pricingSavings']),
      pricingSavingsText: d['pricingSavingsText']?.toString(),
      currency: d['currency']?.toString() ?? '€',
      genres: _strList(d['genres']),
      badgeTypes: _strList(d['badgeTypes']),
      badgeTexts: _strList(d['badgeTexts']),
      isFavorite: _bool(d['isFavorite']),
      section: d['section']?.toString() ?? 'upcoming',
      sortOrder: _int(d['sortOrder']),
      isPublished: _bool(d['isPublished'], true),
      totalTicketsSold: _int(d['totalTicketsSold']),
      totalRevenue: _double(d['totalRevenue']),
      createdAt: _ts(d['createdAt']),
      updatedAt: _ts(d['updatedAt']),
      updatedByEmail: d['updatedByEmail']?.toString(),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'name': name,
        'category': category,
        'duration': duration,
        'imageUrl': imageUrl,
        'gradient': gradient,
        'date': date,
        'location': location,
        'transport': transport,
        'accommodation': accommodation,
        'pricingLabel': pricingLabel,
        'pricingAmount': pricingAmount,
        'pricingSavings': pricingSavings,
        'pricingSavingsText': pricingSavingsText,
        'currency': currency,
        'genres': genres,
        'badgeTypes': badgeTypes,
        'badgeTexts': badgeTexts,
        'isFavorite': isFavorite,
        'section': section,
        'sortOrder': sortOrder,
        'isPublished': isPublished,
        'totalTicketsSold': totalTicketsSold,
        'totalRevenue': totalRevenue,
        if (createdAt != null) 'createdAt': Timestamp.fromDate(createdAt!),
        if (updatedAt != null) 'updatedAt': Timestamp.fromDate(updatedAt!),
        'updatedByEmail': updatedByEmail,
      };
}

class IsarUserProfile {
  final String email;
  final String name;
  final String? avatarUrl;
  final String? phone;
  final String? bio;
  final int memberSince;
  final List<String> genres;
  final double budgetMax;
  final String locationName;
  final String language;
  final bool darkMode;
  final bool notificationsEnabled;
  final bool emailNotificationsEnabled;
  final bool socialNotificationsEnabled;
  final bool ecoMode;
  final bool showCarbonFootprint;
  final bool isOnboarded;
  final int eventsBooked;
  final double co2SavedKg;
  final double moneySavedEur;
  final int percentile;
  final DateTime createdAt;
  final DateTime? lastLoginAt;
  final String role;
  final bool isSuspended;
  final String? suspendedReason;
  final DateTime? suspendedAt;

  const IsarUserProfile({
    required this.email,
    required this.name,
    this.avatarUrl,
    this.phone,
    this.bio,
    required this.memberSince,
    this.genres = const [],
    this.budgetMax = 300,
    this.locationName = '',
    this.language = 'fr',
    this.darkMode = false,
    this.notificationsEnabled = true,
    this.emailNotificationsEnabled = true,
    this.socialNotificationsEnabled = false,
    this.ecoMode = true,
    this.showCarbonFootprint = true,
    this.isOnboarded = false,
    this.eventsBooked = 0,
    this.co2SavedKg = 0,
    this.moneySavedEur = 0,
    this.percentile = 50,
    required this.createdAt,
    this.lastLoginAt,
    this.role = 'user',
    this.isSuspended = false,
    this.suspendedReason,
    this.suspendedAt,
  });

  factory IsarUserProfile.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarUserProfile(
      email: doc.id,
      name: d['name']?.toString() ?? '',
      avatarUrl: d['avatarUrl']?.toString(),
      phone: d['phone']?.toString(),
      bio: d['bio']?.toString(),
      memberSince: _int(d['memberSince'], DateTime.now().year),
      genres: _strList(d['genres']),
      budgetMax: _double(d['budgetMax'], 300),
      locationName: d['locationName']?.toString() ?? '',
      language: d['language']?.toString() ?? 'fr',
      darkMode: _bool(d['darkMode']),
      notificationsEnabled: _bool(d['notificationsEnabled'], true),
      emailNotificationsEnabled: _bool(d['emailNotificationsEnabled'], true),
      socialNotificationsEnabled: _bool(d['socialNotificationsEnabled']),
      ecoMode: _bool(d['ecoMode'], true),
      showCarbonFootprint: _bool(d['showCarbonFootprint'], true),
      isOnboarded: _bool(d['isOnboarded']),
      eventsBooked: _int(d['eventsBooked']),
      co2SavedKg: _double(d['co2SavedKg']),
      moneySavedEur: _double(d['moneySavedEur']),
      percentile: _int(d['percentile'], 50),
      createdAt: _tsRequired(d['createdAt']),
      lastLoginAt: _ts(d['lastLoginAt']),
      role: d['role']?.toString() ?? 'user',
      isSuspended: _bool(d['isSuspended']),
      suspendedReason: d['suspendedReason']?.toString(),
      suspendedAt: _ts(d['suspendedAt']),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'name': name,
        'avatarUrl': avatarUrl,
        'phone': phone,
        'bio': bio,
        'memberSince': memberSince,
        'genres': genres,
        'budgetMax': budgetMax,
        'locationName': locationName,
        'language': language,
        'darkMode': darkMode,
        'notificationsEnabled': notificationsEnabled,
        'emailNotificationsEnabled': emailNotificationsEnabled,
        'socialNotificationsEnabled': socialNotificationsEnabled,
        'ecoMode': ecoMode,
        'showCarbonFootprint': showCarbonFootprint,
        'isOnboarded': isOnboarded,
        'eventsBooked': eventsBooked,
        'co2SavedKg': co2SavedKg,
        'moneySavedEur': moneySavedEur,
        'percentile': percentile,
        'createdAt': Timestamp.fromDate(createdAt),
        if (lastLoginAt != null) 'lastLoginAt': Timestamp.fromDate(lastLoginAt!),
        'role': role,
        'isSuspended': isSuspended,
        'suspendedReason': suspendedReason,
        if (suspendedAt != null) 'suspendedAt': Timestamp.fromDate(suspendedAt!),
      };
}

class IsarTicket {
  final String ticketId;
  final String eventId;
  final String eventName;
  final String eventDate;
  final String eventLocation;
  final String? eventImageUrl;
  final double price;
  final String ticketType;
  final String status;
  final DateTime purchaseDate;
  final String? qrCodeData;
  final String? seatInfo;
  final String? chosenTransportLabel;
  final double? chosenTransportCo2SavedKg;
  final String? transferredToEmail;
  final DateTime? transferredAt;
  final DateTime? cancelledAt;
  final double? refundAmount;
  final DateTime? eventDateParsed;
  final String ownerEmail;
  final String? orderId;

  const IsarTicket({
    required this.ticketId,
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
    this.eventImageUrl,
    required this.price,
    required this.ticketType,
    required this.status,
    required this.purchaseDate,
    this.qrCodeData,
    this.seatInfo,
    this.chosenTransportLabel,
    this.chosenTransportCo2SavedKg,
    this.transferredToEmail,
    this.transferredAt,
    this.cancelledAt,
    this.refundAmount,
    this.eventDateParsed,
    required this.ownerEmail,
    this.orderId,
  });

  factory IsarTicket.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarTicket(
      ticketId: doc.id,
      eventId: d['eventId']?.toString() ?? '',
      eventName: d['eventName']?.toString() ?? '',
      eventDate: d['eventDate']?.toString() ?? '',
      eventLocation: d['eventLocation']?.toString() ?? '',
      eventImageUrl: d['eventImageUrl']?.toString(),
      price: _double(d['price']),
      ticketType: d['ticketType']?.toString() ?? 'standard',
      status: d['status']?.toString() ?? 'confirmed',
      purchaseDate: _tsRequired(d['purchaseDate']),
      qrCodeData: d['qrCodeData']?.toString(),
      seatInfo: d['seatInfo']?.toString(),
      chosenTransportLabel: d['chosenTransportLabel']?.toString(),
      chosenTransportCo2SavedKg: d['chosenTransportCo2SavedKg'] == null
          ? null
          : _double(d['chosenTransportCo2SavedKg']),
      transferredToEmail: d['transferredToEmail']?.toString(),
      transferredAt: _ts(d['transferredAt']),
      cancelledAt: _ts(d['cancelledAt']),
      refundAmount: d['refundAmount'] == null ? null : _double(d['refundAmount']),
      eventDateParsed: _ts(d['eventDateParsed']),
      ownerEmail: d['ownerEmail']?.toString() ?? '',
      orderId: d['orderId']?.toString(),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'eventId': eventId,
        'eventName': eventName,
        'eventDate': eventDate,
        'eventLocation': eventLocation,
        'eventImageUrl': eventImageUrl,
        'price': price,
        'ticketType': ticketType,
        'status': status,
        'purchaseDate': Timestamp.fromDate(purchaseDate),
        'qrCodeData': qrCodeData,
        'seatInfo': seatInfo,
        'chosenTransportLabel': chosenTransportLabel,
        'chosenTransportCo2SavedKg': chosenTransportCo2SavedKg,
        'transferredToEmail': transferredToEmail,
        if (transferredAt != null) 'transferredAt': Timestamp.fromDate(transferredAt!),
        if (cancelledAt != null) 'cancelledAt': Timestamp.fromDate(cancelledAt!),
        'refundAmount': refundAmount,
        if (eventDateParsed != null) 'eventDateParsed': Timestamp.fromDate(eventDateParsed!),
        'ownerEmail': ownerEmail,
        'orderId': orderId,
      };
}

class IsarCartItem {
  final String ownerEmail;
  final String eventId;
  final String eventName;
  final String eventDate;
  final String eventLocation;
  final String? eventImageUrl;
  final double unitPrice;
  final int quantity;
  final String ticketType;
  final String? transportOption;
  final double? transportPrice;
  final String? accommodationOption;
  final double? accommodationPrice;

  const IsarCartItem({
    required this.ownerEmail,
    required this.eventId,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
    this.eventImageUrl,
    required this.unitPrice,
    required this.quantity,
    this.ticketType = 'standard',
    this.transportOption,
    this.transportPrice,
    this.accommodationOption,
    this.accommodationPrice,
  });

  factory IsarCartItem.fromFirestore(DocumentSnapshot doc, String ownerEmail) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarCartItem(
      ownerEmail: ownerEmail,
      eventId: doc.id,
      eventName: d['eventName']?.toString() ?? '',
      eventDate: d['eventDate']?.toString() ?? '',
      eventLocation: d['eventLocation']?.toString() ?? '',
      eventImageUrl: d['eventImageUrl']?.toString(),
      unitPrice: _double(d['unitPrice']),
      quantity: _int(d['quantity'], 1),
      ticketType: d['ticketType']?.toString() ?? 'standard',
      transportOption: d['transportOption']?.toString(),
      transportPrice: d['transportPrice'] == null ? null : _double(d['transportPrice']),
      accommodationOption: d['accommodationOption']?.toString(),
      accommodationPrice:
          d['accommodationPrice'] == null ? null : _double(d['accommodationPrice']),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'eventName': eventName,
        'eventDate': eventDate,
        'eventLocation': eventLocation,
        'eventImageUrl': eventImageUrl,
        'unitPrice': unitPrice,
        'quantity': quantity,
        'ticketType': ticketType,
        'transportOption': transportOption,
        'transportPrice': transportPrice,
        'accommodationOption': accommodationOption,
        'accommodationPrice': accommodationPrice,
      };
}

class IsarOrder {
  final String orderId;
  final String customerEmail;
  final DateTime placedAt;
  final double subtotal;
  final double discount;
  final double serviceFee;
  final double tax;
  final double total;
  final String currency;
  final String? promoCode;
  final String paymentMethod;
  final String paymentBrand;
  final String? paymentLast4;
  final String status;
  final int itemCount;
  final List<String> ticketIds;
  final String? failureReason;
  final String? refundReason;
  final DateTime? refundedAt;
  final double? refundAmount;
  final String? refundedByEmail;

  const IsarOrder({
    required this.orderId,
    required this.customerEmail,
    required this.placedAt,
    required this.subtotal,
    required this.discount,
    required this.serviceFee,
    required this.tax,
    required this.total,
    required this.currency,
    this.promoCode,
    required this.paymentMethod,
    required this.paymentBrand,
    this.paymentLast4,
    required this.status,
    required this.itemCount,
    this.ticketIds = const [],
    this.failureReason,
    this.refundReason,
    this.refundedAt,
    this.refundAmount,
    this.refundedByEmail,
  });

  factory IsarOrder.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarOrder(
      orderId: doc.id,
      customerEmail: d['customerEmail']?.toString() ?? '',
      placedAt: _tsRequired(d['placedAt']),
      subtotal: _double(d['subtotal']),
      discount: _double(d['discount']),
      serviceFee: _double(d['serviceFee']),
      tax: _double(d['tax']),
      total: _double(d['total']),
      currency: d['currency']?.toString() ?? '€',
      promoCode: d['promoCode']?.toString(),
      paymentMethod: d['paymentMethod']?.toString() ?? '',
      paymentBrand: d['paymentBrand']?.toString() ?? '',
      paymentLast4: d['paymentLast4']?.toString(),
      status: d['status']?.toString() ?? 'pending',
      itemCount: _int(d['itemCount']),
      ticketIds: _strList(d['ticketIds']),
      failureReason: d['failureReason']?.toString(),
      refundReason: d['refundReason']?.toString(),
      refundedAt: _ts(d['refundedAt']),
      refundAmount:
          d['refundAmount'] == null ? null : _double(d['refundAmount']),
      refundedByEmail: d['refundedByEmail']?.toString(),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'customerEmail': customerEmail,
        'placedAt': Timestamp.fromDate(placedAt),
        'subtotal': subtotal,
        'discount': discount,
        'serviceFee': serviceFee,
        'tax': tax,
        'total': total,
        'currency': currency,
        'promoCode': promoCode,
        'paymentMethod': paymentMethod,
        'paymentBrand': paymentBrand,
        'paymentLast4': paymentLast4,
        'status': status,
        'itemCount': itemCount,
        'ticketIds': ticketIds,
        'failureReason': failureReason,
        'refundReason': refundReason,
        if (refundedAt != null) 'refundedAt': Timestamp.fromDate(refundedAt!),
        'refundAmount': refundAmount,
        'refundedByEmail': refundedByEmail,
      };
}

class IsarPromoCode {
  final String code;
  final String label;
  final String emoji;
  final String discountType; // 'percent' | 'fixed'
  final double discountValue;
  final double minSubtotal;
  final DateTime? expiresAt;
  final int maxUses;
  final int usedCount;
  final bool isActive;
  final DateTime createdAt;
  final String? createdByEmail;

  const IsarPromoCode({
    required this.code,
    required this.label,
    this.emoji = '🎁',
    required this.discountType,
    required this.discountValue,
    this.minSubtotal = 0,
    this.expiresAt,
    this.maxUses = 0,
    this.usedCount = 0,
    this.isActive = true,
    required this.createdAt,
    this.createdByEmail,
  });

  factory IsarPromoCode.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarPromoCode(
      code: doc.id,
      label: d['label']?.toString() ?? '',
      emoji: d['emoji']?.toString() ?? '🎁',
      discountType: d['discountType']?.toString() ?? 'percent',
      discountValue: _double(d['discountValue']),
      minSubtotal: _double(d['minSubtotal']),
      expiresAt: _ts(d['expiresAt']),
      maxUses: _int(d['maxUses']),
      usedCount: _int(d['usedCount']),
      isActive: _bool(d['isActive'], true),
      createdAt: _tsRequired(d['createdAt']),
      createdByEmail: d['createdByEmail']?.toString(),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'label': label,
        'emoji': emoji,
        'discountType': discountType,
        'discountValue': discountValue,
        'minSubtotal': minSubtotal,
        if (expiresAt != null) 'expiresAt': Timestamp.fromDate(expiresAt!),
        'maxUses': maxUses,
        'usedCount': usedCount,
        'isActive': isActive,
        'createdAt': Timestamp.fromDate(createdAt),
        'createdByEmail': createdByEmail,
      };
}

class IsarAppSettings {
  final double taxRate;
  final double serviceFeeRate;
  final String supportEmail;
  final bool maintenanceMode;
  final String maintenanceMessage;
  final List<String> featuredEventIds;
  final int maxTicketsPerOrder;
  final String currencyCode;
  final String currencySymbol;
  final DateTime updatedAt;
  final String? updatedByEmail;
  final String? stripePublishableKey;
  final bool paymentSimulation;

  const IsarAppSettings({
    this.taxRate = 0.20,
    this.serviceFeeRate = 0.05,
    this.supportEmail = 'support@pulsar.app',
    this.maintenanceMode = false,
    this.maintenanceMessage = '',
    this.featuredEventIds = const [],
    this.maxTicketsPerOrder = 10,
    this.currencyCode = 'EUR',
    this.currencySymbol = '€',
    required this.updatedAt,
    this.updatedByEmail,
    this.stripePublishableKey,
    this.paymentSimulation = true,
  });

  factory IsarAppSettings.defaults() => IsarAppSettings(updatedAt: DateTime.now());

  factory IsarAppSettings.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarAppSettings(
      taxRate: _double(d['taxRate'], 0.20),
      serviceFeeRate: _double(d['serviceFeeRate'], 0.05),
      supportEmail: d['supportEmail']?.toString() ?? 'support@pulsar.app',
      maintenanceMode: _bool(d['maintenanceMode']),
      maintenanceMessage: d['maintenanceMessage']?.toString() ?? '',
      featuredEventIds: _strList(d['featuredEventIds']),
      maxTicketsPerOrder: _int(d['maxTicketsPerOrder'], 10),
      currencyCode: d['currencyCode']?.toString() ?? 'EUR',
      currencySymbol: d['currencySymbol']?.toString() ?? '€',
      updatedAt: _tsRequired(d['updatedAt']),
      updatedByEmail: d['updatedByEmail']?.toString(),
      stripePublishableKey: d['stripePublishableKey']?.toString(),
      paymentSimulation: _bool(d['paymentSimulation'], true),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'taxRate': taxRate,
        'serviceFeeRate': serviceFeeRate,
        'supportEmail': supportEmail,
        'maintenanceMode': maintenanceMode,
        'maintenanceMessage': maintenanceMessage,
        'featuredEventIds': featuredEventIds,
        'maxTicketsPerOrder': maxTicketsPerOrder,
        'currencyCode': currencyCode,
        'currencySymbol': currencySymbol,
        'updatedAt': Timestamp.fromDate(updatedAt),
        'updatedByEmail': updatedByEmail,
        'stripePublishableKey': stripePublishableKey,
        'paymentSimulation': paymentSimulation,
      };
}

class IsarFavorite {
  final String userEmail;
  final String eventId;
  final DateTime addedAt;

  const IsarFavorite({
    required this.userEmail,
    required this.eventId,
    required this.addedAt,
  });

  factory IsarFavorite.fromFirestore(DocumentSnapshot doc, String userEmail) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarFavorite(
      userEmail: userEmail,
      eventId: doc.id,
      addedAt: _tsRequired(d['addedAt']),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'addedAt': Timestamp.fromDate(addedAt),
      };
}

class IsarPaymentMethod {
  final String methodId;
  final String ownerEmail;
  final String brand;
  final String last4;
  final String holder;
  final String expiry;
  final bool isDefault;
  final DateTime createdAt;

  const IsarPaymentMethod({
    required this.methodId,
    required this.ownerEmail,
    required this.brand,
    required this.last4,
    required this.holder,
    required this.expiry,
    this.isDefault = false,
    required this.createdAt,
  });

  factory IsarPaymentMethod.fromFirestore(DocumentSnapshot doc, String ownerEmail) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarPaymentMethod(
      methodId: doc.id,
      ownerEmail: ownerEmail,
      brand: d['brand']?.toString() ?? '',
      last4: d['last4']?.toString() ?? '',
      holder: d['holder']?.toString() ?? '',
      expiry: d['expiry']?.toString() ?? '',
      isDefault: _bool(d['isDefault']),
      createdAt: _tsRequired(d['createdAt']),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'brand': brand,
        'last4': last4,
        'holder': holder,
        'expiry': expiry,
        'isDefault': isDefault,
        'createdAt': Timestamp.fromDate(createdAt),
      };
}

class IsarAdminAction {
  final String id;
  final String actorEmail;
  final String actorRole;
  final String action;
  final String entityType;
  final String entityId;
  final DateTime at;
  final String? details;

  const IsarAdminAction({
    required this.id,
    required this.actorEmail,
    required this.actorRole,
    required this.action,
    required this.entityType,
    required this.entityId,
    required this.at,
    this.details,
  });

  factory IsarAdminAction.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarAdminAction(
      id: doc.id,
      actorEmail: d['actorEmail']?.toString() ?? '',
      actorRole: d['actorRole']?.toString() ?? 'user',
      action: d['action']?.toString() ?? '',
      entityType: d['entityType']?.toString() ?? '',
      entityId: d['entityId']?.toString() ?? '',
      at: _tsRequired(d['at']),
      details: d['details']?.toString(),
    );
  }

  Map<String, dynamic> toFirestore() => {
        'actorEmail': actorEmail,
        'actorRole': actorRole,
        'action': action,
        'entityType': entityType,
        'entityId': entityId,
        'at': Timestamp.fromDate(at),
        'details': details,
      };
}

class IsarBroadcastNotification {
  final String broadcastId;
  final String title;
  final String body;
  final String category;
  final String? actionRoute;
  final String audience;
  final DateTime sentAt;
  final String sentByEmail;

  const IsarBroadcastNotification({
    required this.broadcastId,
    required this.title,
    required this.body,
    required this.category,
    this.actionRoute,
    required this.audience,
    required this.sentAt,
    required this.sentByEmail,
  });

  factory IsarBroadcastNotification.fromFirestore(DocumentSnapshot doc) {
    final d = doc.data() as Map<String, dynamic>? ?? const {};
    return IsarBroadcastNotification(
      broadcastId: doc.id,
      title: d['title']?.toString() ?? '',
      body: d['body']?.toString() ?? '',
      category: d['category']?.toString() ?? 'system',
      actionRoute: d['actionRoute']?.toString(),
      audience: d['audience']?.toString() ?? 'all',
      sentAt: _tsRequired(d['sentAt']),
      sentByEmail: d['sentByEmail']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toFirestore() => {
        'title': title,
        'body': body,
        'category': category,
        'actionRoute': actionRoute,
        'audience': audience,
        'sentAt': Timestamp.fromDate(sentAt),
        'sentByEmail': sentByEmail,
      };
}
