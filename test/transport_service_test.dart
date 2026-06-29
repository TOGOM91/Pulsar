// Tests simples — TransportService et TransportOption
// Aucune dépendance externe : service pur, 100 % synchrone.
import 'package:flutter_test/flutter_test.dart';
import 'package:flowee_app/features/transport/data/transport_service.dart';
import 'package:flowee_app/features/transport/domain/transport_models.dart';

void main() {
  final svc = TransportService();

  // ── Tests simples : routing ───────────────────────────────────────────────

  group('TransportService — routing', () {
    test('événement parisien retourne 4 options (métro/bus/vélo/voiture)', () {
      final opts = svc.getOptionsForEvent(
        eventId: 'e1',
        eventLocation: 'Paris, Bercy',
        userCity: 'Paris',
      );
      expect(opts, hasLength(4));
      expect(opts.any((o) => o.mode == TransportMode.train), isTrue);
      expect(opts.any((o) => o.mode == TransportMode.bike), isTrue);
    });

    test('Vincennes (Paris) : option train recommandée', () {
      final opts = svc.getOptionsForEvent(
        eventId: 'e1',
        eventLocation: 'Vincennes',
        userCity: 'Paris',
      );
      final recommended = opts.where((o) => o.isRecommended).toList();
      expect(recommended, isNotEmpty);
      expect(recommended.first.mode, TransportMode.train);
    });

    test('Clisson (Hellfest) : retourne un TGV SNCF recommandé', () {
      final opts = svc.getOptionsForEvent(
        eventId: 'e2',
        eventLocation: 'Clisson',
      );
      final train = opts.firstWhere((o) => o.mode == TransportMode.train);
      expect(train.operator, 'SNCF');
      expect(train.isRecommended, isTrue);
    });

    test('Avignon : contient covoiturage et voiture', () {
      final opts = svc.getOptionsForEvent(
        eventId: 'e3',
        eventLocation: 'Avignon',
      );
      expect(opts.any((o) => o.mode == TransportMode.carpool), isTrue);
      expect(opts.any((o) => o.mode == TransportMode.car), isTrue);
    });

    test('ville inconnue : fallback générique avec option recommandée', () {
      final opts = svc.getOptionsForEvent(
        eventId: 'e9',
        eventLocation: 'Bordeaux',
      );
      expect(opts, isNotEmpty);
      expect(opts.any((o) => o.isRecommended), isTrue);
    });
  });

  // ── Tests simples : propriétés calculées ─────────────────────────────────

  group('TransportOption — durationLabel', () {
    test('formate les minutes seules', () {
      const opt = TransportOption(
        id: 'x',
        mode: TransportMode.bus,
        title: '',
        description: '',
        duration: Duration(minutes: 45),
        cost: 2.15,
        co2Kg: 0.4,
        co2SavedKgVsCar: 3.9,
      );
      expect(opt.durationLabel, '45min');
    });

    test('formate heures + minutes avec zero-padding', () {
      const opt = TransportOption(
        id: 'x',
        mode: TransportMode.train,
        title: '',
        description: '',
        duration: Duration(hours: 2, minutes: 5),
        cost: 62,
        co2Kg: 1.2,
        co2SavedKgVsCar: 38.8,
      );
      expect(opt.durationLabel, '2h05');
    });

    test('formate heures rondes sans minutes', () {
      const opt = TransportOption(
        id: 'x',
        mode: TransportMode.train,
        title: '',
        description: '',
        duration: Duration(hours: 3),
        cost: 55,
        co2Kg: 1.8,
        co2SavedKgVsCar: 28.2,
      );
      expect(opt.durationLabel, '3h');
    });
  });

  group('TransportOption — ecoScore / ecoGrade', () {
    test('voiture solo : ecoScore 0 et grade E', () {
      const car = TransportOption(
        id: 'c1',
        mode: TransportMode.car,
        title: '',
        description: '',
        duration: Duration(hours: 4),
        cost: 95,
        co2Kg: 40,
        co2SavedKgVsCar: 0,
      );
      expect(car.ecoScore, 0);
      expect(car.ecoGrade, 'E');
    });

    test('TGV Paris→Nantes : ecoScore 78 et grade A', () {
      const tgv = TransportOption(
        id: 't1',
        mode: TransportMode.train,
        title: '',
        description: '',
        duration: Duration(hours: 2, minutes: 5),
        cost: 62,
        co2Kg: 1.2,
        co2SavedKgVsCar: 38.8,
      );
      // ecoScore = (38.8 / 50 * 100).round() = 78
      expect(tgv.ecoScore, 78);
      expect(tgv.ecoGrade, 'A');
    });
  });
}
