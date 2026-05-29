import 'dart:io';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'isar_collections.dart';

/// Singleton service for Isar database initialization and access.
class IsarService {
  static Isar? _instance;

  IsarService._();

  static const _schemas = [
    IsarEventSchema,
    IsarTicketSchema,
    IsarCartItemSchema,
    IsarUserProfileSchema,
    IsarAuthSessionSchema,
    IsarFavoriteSchema,
    IsarOrderSchema,
    IsarAppSettingsSchema,
    IsarPromoCodeSchema,
    IsarPaymentMethodSchema,
    IsarAdminActionSchema,
    IsarBroadcastNotificationSchema,
  ];

  /// Opens (or returns existing) Isar instance.
  /// Auto-deletes and recreates the DB on schema mismatch.
  static Future<Isar> get instance async {
    if (_instance != null && _instance!.isOpen) return _instance!;

    final dir = await getApplicationDocumentsDirectory();
    try {
      _instance = await Isar.open(
        _schemas,
        directory: dir.path,
        name: 'pulsar_db',
      );
    } catch (_) {
      // Schema mismatch — wipe and recreate (dev/demo data only)
      for (final ext in ['.isar', '.isar.lock']) {
        final f = File('${dir.path}/pulsar_db$ext');
        if (await f.exists()) await f.delete();
      }
      _instance = await Isar.open(
        _schemas,
        directory: dir.path,
        name: 'pulsar_db',
      );
    }
    return _instance!;
  }

  /// Close the database (for testing or cleanup).
  static Future<void> close() async {
    if (_instance != null && _instance!.isOpen) {
      await _instance!.close();
      _instance = null;
    }
  }
}
