// Tests mock de PromoRepository (stub manuel + Mockito verify)
//
// En Dart null-safe, mockito nécessite build_runner pour mocker les types
// non-nullables. On utilise donc un stub manuel (classe Dart pure) qui
// illustre les mêmes concepts : injection de dépendance, comportement
// configurable par test, et vérification des appels.
//
// Concepts démontrés :
//   • Stub synchrone   retourner une valeur fixe
//   • Stub asynchrone  simuler un appel réseau
//   • Spy    enregistrer les appels pour assertion
import 'package:flutter_test/flutter_test.dart';
import 'package:flowee_app/features/cart/domain/promo_code.dart';

//Interface (contrat)

abstract class PromoRepository {
  Future<PromoCode?> findByCode(String code);
  int get usageCount;
}

// Stub manuel (mock sans framework)

class _StubPromoRepository implements PromoRepository {
  final Map<String, PromoCode?> _codes = {};
  int _usageCount = 0;
  final List<String> calls = []; // spy : trace les appels

  void stub(String code, PromoCode? result) => _codes[code] = result;
  void setUsageCount(int n) => _usageCount = n;

  @override
  Future<PromoCode?> findByCode(String code) async {
    calls.add(code);
    return _codes[code];
  }

  @override
  int get usageCount => _usageCount;
}

//Tests

void main() {
  late _StubPromoRepository repo;

  setUp(() => repo = _StubPromoRepository());

  group('Stub mock — synchrone', () {
    test('usageCount retourne la valeur configurée', () {
      repo.setUsageCount(42);
      expect(repo.usageCount, 42);
    });

    test('usageCount vaut 0 par défaut (aucune configuration)', () {
      expect(repo.usageCount, 0);
    });
  });

  group('Stub mock — asynchrone', () {
    test('findByCode retourne null pour un code non stubbed', () async {
      final result = await repo.findByCode('INVALID');
      expect(result, isNull);
    });

    test('findByCode retourne le PromoCode configuré', () async {
      const promo = PromoCode(
        code: 'PULSAR10',
        label: '10 % sur ta première commande',
        percentOff: 10,
      );
      repo.stub('PULSAR10', promo);

      final result = await repo.findByCode('PULSAR10');

      expect(result, isNotNull);
      expect(result!.code, 'PULSAR10');
      expect(result.percentOff, 10);
    });

    test('spy : findByCode enregistre l\'appel pour vérification', () async {
      repo.stub('ECO20', null);
      await repo.findByCode('ECO20');

      expect(repo.calls, contains('ECO20'));
      expect(repo.calls, hasLength(1));
    });

    test('mock + CheckoutBreakdown : remise ECO20 appliquée au panier', () async {
      const promo = PromoCode(
        code: 'ECO20',
        label: '20 % mode éco',
        percentOff: 20,
        minSubtotal: 100,
      );
      repo.stub('ECO20', promo);

      final found = await repo.findByCode('ECO20');
      final breakdown = CheckoutBreakdown.from(subtotal: 150, promo: found);

      // subtotal 150 → discount 30 → base 120
      // serviceFee = 120 × 5 % = 6 ; tax = 120 × 20 % = 24 ; total = 150
      expect(breakdown.discount, closeTo(30.0, 1e-9));
      expect(breakdown.total, closeTo(150.0, 1e-9));
    });
  });
}
