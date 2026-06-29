import 'package:cloud_firestore/cloud_firestore.dart';

/// Centralised collection references + persistence enable.
/// All repositories go through these getters so we have a single
/// place to refactor if schema names ever change.
class FirestoreService {
  final FirebaseFirestore _db;

  FirestoreService(this._db);

  FirebaseFirestore get db => _db;

  // ── Root collections ──
  CollectionReference<Map<String, dynamic>> get events => _db.collection('events');
  CollectionReference<Map<String, dynamic>> get users => _db.collection('users');
  CollectionReference<Map<String, dynamic>> get orders => _db.collection('orders');
  CollectionReference<Map<String, dynamic>> get tickets => _db.collection('tickets');
  CollectionReference<Map<String, dynamic>> get promoCodes => _db.collection('promo_codes');
  CollectionReference<Map<String, dynamic>> get appSettings => _db.collection('app_settings');
  CollectionReference<Map<String, dynamic>> get adminActions => _db.collection('admin_actions');
  CollectionReference<Map<String, dynamic>> get broadcasts => _db.collection('broadcasts');

  // ── Per-user subcollections ──
  CollectionReference<Map<String, dynamic>> cartFor(String email) =>
      users.doc(email).collection('cart');
  CollectionReference<Map<String, dynamic>> favoritesFor(String email) =>
      users.doc(email).collection('favorites');
  CollectionReference<Map<String, dynamic>> paymentMethodsFor(String email) =>
      users.doc(email).collection('payment_methods');

  // ── Singleton doc refs ──
  DocumentReference<Map<String, dynamic>> get appSettingsDoc => appSettings.doc('app');
}
