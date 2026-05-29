import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

// ─────────────────────────────────────────────────────────────────
// Helper Converter — Drift has no native list-of-string column, we serialize
// as JSON. Keeps the code-gen happy while still letting the UI consume
// proper `List<String>` values.
// ─────────────────────────────────────────────────────────────────
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();
  @override
  List<String> fromSql(String fromDb) {
    if (fromDb.isEmpty) return const [];
    return fromDb.split(''); // unit separator, never appears in UI
  }

  @override
  String toSql(List<String> value) => value.join('');
}

const _stringList = StringListConverter();

// ─────────────────────────────────────────────────────────────────
// Tables
// ─────────────────────────────────────────────────────────────────

@DataClassName('IsarEvent')
class IsarEvents extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get eventId => text().unique()();

  TextColumn get name => text()();
  TextColumn get category => text()();
  TextColumn get duration => text()();
  TextColumn get imageUrl => text()();
  TextColumn get gradient => text()();
  TextColumn get date => text()();
  TextColumn get location => text()();
  TextColumn get transport => text()();
  TextColumn get accommodation => text().nullable()();
  TextColumn get pricingLabel => text()();
  RealColumn get pricingAmount => real()();
  RealColumn get pricingSavings => real().nullable()();
  TextColumn get pricingSavingsText => text().nullable()();
  TextColumn get currency => text().withDefault(const Constant('€'))();
  TextColumn get genres => text().map(_stringList).withDefault(const Constant(''))();
  TextColumn get badgeTypes => text().map(_stringList).withDefault(const Constant(''))();
  TextColumn get badgeTexts => text().map(_stringList).withDefault(const Constant(''))();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  TextColumn get section => text()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  // Admin metadata
  BoolColumn get isPublished => boolean().withDefault(const Constant(true))();
  IntColumn get totalTicketsSold => integer().withDefault(const Constant(0))();
  RealColumn get totalRevenue => real().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get updatedByEmail => text().nullable()();
}

@DataClassName('IsarTicket')
class IsarTickets extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get ticketId => text().unique()();
  TextColumn get eventId => text()();
  TextColumn get eventName => text()();
  TextColumn get eventDate => text()();
  TextColumn get eventLocation => text()();
  TextColumn get eventImageUrl => text().nullable()();
  RealColumn get price => real()();
  TextColumn get ticketType => text()();
  TextColumn get status => text()();
  DateTimeColumn get purchaseDate => dateTime()();
  TextColumn get qrCodeData => text().nullable()();
  TextColumn get seatInfo => text().nullable()();
  TextColumn get chosenTransportLabel => text().nullable()();
  RealColumn get chosenTransportCo2SavedKg => real().nullable()();
  TextColumn get transferredToEmail => text().nullable()();
  DateTimeColumn get transferredAt => dateTime().nullable()();
  DateTimeColumn get cancelledAt => dateTime().nullable()();
  RealColumn get refundAmount => real().nullable()();
  DateTimeColumn get eventDateParsed => dateTime().nullable()();
  TextColumn get ownerEmail => text()();
  TextColumn get orderId => text().nullable()();
}

@DataClassName('IsarCartItem')
class IsarCartItems extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get ownerEmail => text()();
  TextColumn get eventId => text()();
  TextColumn get eventName => text()();
  TextColumn get eventDate => text()();
  TextColumn get eventLocation => text()();
  TextColumn get eventImageUrl => text().nullable()();
  RealColumn get unitPrice => real()();
  IntColumn get quantity => integer()();
  TextColumn get ticketType => text()();
  TextColumn get transportOption => text().nullable()();
  RealColumn get transportPrice => real().nullable()();
  TextColumn get accommodationOption => text().nullable()();
  RealColumn get accommodationPrice => real().nullable()();
}

@DataClassName('IsarUserProfile')
class IsarUserProfiles extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get email => text().unique()();
  TextColumn get name => text()();
  TextColumn get passwordHash => text().withDefault(const Constant(''))();
  TextColumn get avatarUrl => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get bio => text().nullable()();
  IntColumn get memberSince => integer()();
  TextColumn get genres => text().map(_stringList).withDefault(const Constant(''))();
  RealColumn get budgetMax => real().withDefault(const Constant(300))();
  TextColumn get locationName => text().withDefault(const Constant(''))();
  TextColumn get language => text().withDefault(const Constant('fr'))();
  BoolColumn get darkMode => boolean().withDefault(const Constant(false))();
  BoolColumn get notificationsEnabled => boolean().withDefault(const Constant(true))();
  BoolColumn get emailNotificationsEnabled => boolean().withDefault(const Constant(true))();
  BoolColumn get socialNotificationsEnabled => boolean().withDefault(const Constant(false))();
  BoolColumn get ecoMode => boolean().withDefault(const Constant(true))();
  BoolColumn get showCarbonFootprint => boolean().withDefault(const Constant(true))();
  BoolColumn get isOnboarded => boolean().withDefault(const Constant(false))();
  IntColumn get eventsBooked => integer().withDefault(const Constant(0))();
  RealColumn get co2SavedKg => real().withDefault(const Constant(0))();
  RealColumn get moneySavedEur => real().withDefault(const Constant(0))();
  IntColumn get percentile => integer().withDefault(const Constant(50))();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get lastLoginAt => dateTime().nullable()();
  TextColumn get role => text().withDefault(const Constant('user'))();
  BoolColumn get isSuspended => boolean().withDefault(const Constant(false))();
  TextColumn get suspendedReason => text().nullable()();
  DateTimeColumn get suspendedAt => dateTime().nullable()();
}

@DataClassName('IsarAuthSession')
class IsarAuthSessions extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get key => text().unique()();
  TextColumn get activeEmail => text().nullable()();
  DateTimeColumn get loggedInAt => dateTime().nullable()();
}

@DataClassName('IsarFavorite')
class IsarFavorites extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get userEmail => text()();
  TextColumn get eventId => text()();
  DateTimeColumn get addedAt => dateTime()();
}

@DataClassName('IsarOrder')
class IsarOrders extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get orderId => text().unique()();
  TextColumn get customerEmail => text()();
  DateTimeColumn get placedAt => dateTime()();
  RealColumn get subtotal => real()();
  RealColumn get discount => real()();
  RealColumn get serviceFee => real()();
  RealColumn get tax => real()();
  RealColumn get total => real()();
  TextColumn get currency => text()();
  TextColumn get promoCode => text().nullable()();
  TextColumn get paymentMethod => text()();
  TextColumn get paymentBrand => text()();
  TextColumn get paymentLast4 => text().nullable()();
  TextColumn get status => text()();
  IntColumn get itemCount => integer()();
  TextColumn get ticketIds => text().map(_stringList).withDefault(const Constant(''))();
  TextColumn get failureReason => text().nullable()();
  TextColumn get refundReason => text().nullable()();
  DateTimeColumn get refundedAt => dateTime().nullable()();
  RealColumn get refundAmount => real().nullable()();
  TextColumn get refundedByEmail => text().nullable()();
}

@DataClassName('IsarAppSettings')
class IsarAppSettingsTable extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get key => text().unique()();
  RealColumn get taxRate => real()();
  RealColumn get serviceFeeRate => real()();
  TextColumn get supportEmail => text()();
  BoolColumn get maintenanceMode => boolean()();
  TextColumn get maintenanceMessage => text()();
  TextColumn get featuredEventIds => text().map(_stringList).withDefault(const Constant(''))();
  IntColumn get maxTicketsPerOrder => integer()();
  TextColumn get currencyCode => text()();
  TextColumn get currencySymbol => text()();
  DateTimeColumn get updatedAt => dateTime()();
  TextColumn get updatedByEmail => text().nullable()();
  TextColumn get stripePublishableKey => text().nullable()();
  BoolColumn get paymentSimulation => boolean().withDefault(const Constant(true))();
}

@DataClassName('IsarPromoCode')
class IsarPromoCodes extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get code => text().unique()();
  TextColumn get label => text()();
  TextColumn get emoji => text()();
  TextColumn get discountType => text()();
  RealColumn get discountValue => real()();
  RealColumn get minSubtotal => real()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
  IntColumn get maxUses => integer()();
  IntColumn get usedCount => integer().withDefault(const Constant(0))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime()();
  TextColumn get createdByEmail => text().nullable()();
}

@DataClassName('IsarPaymentMethod')
class IsarPaymentMethods extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get methodId => text().unique()();
  TextColumn get ownerEmail => text()();
  TextColumn get brand => text()();
  TextColumn get last4 => text()();
  TextColumn get holder => text()();
  TextColumn get expiry => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('IsarAdminAction')
class IsarAdminActions extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get actorEmail => text()();
  TextColumn get actorRole => text()();
  TextColumn get action => text()();
  TextColumn get entityType => text()();
  TextColumn get entityId => text()();
  DateTimeColumn get at => dateTime()();
  TextColumn get details => text().nullable()();
}

@DataClassName('IsarBroadcastNotification')
class IsarBroadcastNotifications extends Table {
  IntColumn get isarId => integer().autoIncrement()();
  TextColumn get broadcastId => text().unique()();
  TextColumn get title => text()();
  TextColumn get body => text()();
  TextColumn get category => text()();
  TextColumn get actionRoute => text().nullable()();
  TextColumn get audience => text()();
  DateTimeColumn get sentAt => dateTime()();
  TextColumn get sentByEmail => text()();
}

// ─────────────────────────────────────────────────────────────────
// Database
// ─────────────────────────────────────────────────────────────────

@DriftDatabase(tables: [
  IsarEvents,
  IsarTickets,
  IsarCartItems,
  IsarUserProfiles,
  IsarAuthSessions,
  IsarFavorites,
  IsarOrders,
  IsarAppSettingsTable,
  IsarPromoCodes,
  IsarPaymentMethods,
  IsarAdminActions,
  IsarBroadcastNotifications,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  AppDatabase.connection(super.connection);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        onUpgrade: (m, from, to) async {
          // Future migrations land here.
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

QueryExecutor _openConnection() {
  return driftDatabase(
    name: 'pulsar_db',
    web: DriftWebOptions(
      sqlite3Wasm: Uri.parse('sqlite3.wasm'),
      driftWorker: Uri.parse('drift_worker.js'),
    ),
  );
}
