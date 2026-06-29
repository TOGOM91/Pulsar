// Tests asynchrones — AuthService (chemins de validation)
//
// Ces tests couvrent les gardes synchrones de register() et signIn() qui
// retournent un Future<AuthFailure> AVANT tout appel Firebase. On peut donc
// injecter des fakes vides : leurs méthodes ne seront jamais invoquées.
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:flowee_app/core/database/firestore_service.dart';
import 'package:flowee_app/features/auth/domain/auth_service.dart';

// Fakes minimalistes — implémentent l'interface sans toucher Firebase.
// noSuchMethod (hérité de Fake) lève UnimplementedError si une méthode
// inattendue est appelée, ce qui ferait échouer le test immédiatement.
class _FakeFirebaseAuth extends Fake implements FirebaseAuth {}

class _FakeFirestoreService extends Fake implements FirestoreService {}

void main() {
  late AuthService svc;

  setUp(() {
    svc = AuthService(_FakeFirestoreService(), auth: _FakeFirebaseAuth());
  });

  group('AuthService.register — validation (async)', () {
    test('nom vide retourne AuthFailure avec message explicite', () async {
      final result = await svc.register(
        name: '',
        email: 'tom@test.com',
        password: 'password123',
      );
      expect(result, isA<AuthFailure>());
      expect((result as AuthFailure).message, contains('prénom'));
    });

    test('nom de type espaces retourne AuthFailure', () async {
      final result = await svc.register(
        name: '   ',
        email: 'tom@test.com',
        password: 'password123',
      );
      expect(result, isA<AuthFailure>());
    });

    test('email invalide retourne AuthFailure', () async {
      final result = await svc.register(
        name: 'Tom',
        email: 'pas-un-email',
        password: 'password123',
      );
      expect(result, isA<AuthFailure>());
      expect((result as AuthFailure).message, contains('email'));
    });

    test('mot de passe trop court (< 6 chars) retourne AuthFailure', () async {
      final result = await svc.register(
        name: 'Tom',
        email: 'tom@test.com',
        password: '123',
      );
      expect(result, isA<AuthFailure>());
      expect((result as AuthFailure).message, contains('6 caractères'));
    });
  });

  group('AuthService.signIn — validation (async)', () {
    test('email invalide retourne AuthFailure immédiatement', () async {
      final result = await svc.signIn(
        email: 'invalid-email',
        password: 'password123',
      );
      expect(result, isA<AuthFailure>());
    });

    test('email avec espaces est nettoyé puis validé', () async {
      // '  not@@email  ' trimmed → 'not@@email' → invalide
      final result = await svc.signIn(
        email: '  not@@email  ',
        password: 'password123',
      );
      expect(result, isA<AuthFailure>());
    });
  });
}
