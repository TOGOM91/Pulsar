import '../domain/transport_models.dart';

/// Mock service generating realistic transport options.
/// Replace with real API calls (SNCF, BlaBlaCar) when keys are available.
class TransportService {
  TransportService();

  /// Generates 4-5 transport options for a given event location.
  /// `userCity` defaults to "Paris" if profile not set.
  List<TransportOption> getOptionsForEvent({
    required String eventId,
    required String eventLocation,
    String userCity = 'Paris',
  }) {
    final lower = eventLocation.toLowerCase();
    final isParis = lower.contains('paris') ||
        lower.contains('vincennes') ||
        lower.contains('longchamp');

    // Local Paris event → metro/bus only
    if (isParis && userCity.toLowerCase().contains('paris')) {
      return _parisLocalOptions(eventId);
    }
    if (lower.contains('clisson') || lower.contains('nantes')) {
      return _parisToNantes(eventId);
    }
    if (lower.contains('avignon')) {
      return _parisToAvignon(eventId);
    }
    // Generic out-of-town options
    return _genericIntercityOptions(eventId);
  }

  List<TransportOption> _parisLocalOptions(String eventId) => [
        TransportOption(
          id: '${eventId}_t1',
          mode: TransportMode.train,
          title: 'Métro direct',
          description: 'Ligne 1 + 14, 25min porte-à-porte',
          duration: const Duration(minutes: 25),
          cost: 2.15,
          co2Kg: 0.1,
          co2SavedKgVsCar: 4.2,
          features: const ['Inclus dans abonnement', 'Toutes les 2min'],
          isRecommended: true,
          operator: 'RATP',
        ),
        TransportOption(
          id: '${eventId}_t2',
          mode: TransportMode.bus,
          title: 'Bus + Tram',
          description: 'Ligne 38 → T3a',
          duration: const Duration(minutes: 45),
          cost: 2.15,
          co2Kg: 0.4,
          co2SavedKgVsCar: 3.9,
          features: const ['1 correspondance', 'Wi-Fi gratuit'],
          operator: 'RATP',
        ),
        TransportOption(
          id: '${eventId}_t3',
          mode: TransportMode.bike,
          title: 'Vélo (Vélib)',
          description: 'Piste cyclable continue',
          duration: const Duration(minutes: 35),
          cost: 1.7,
          co2Kg: 0,
          co2SavedKgVsCar: 4.3,
          features: const ['Zéro émission', 'Pas de bouchons'],
          operator: 'Vélib',
        ),
        TransportOption(
          id: '${eventId}_t4',
          mode: TransportMode.car,
          title: 'Voiture personnelle',
          description: 'Trafic moyen, parking 15€',
          duration: const Duration(minutes: 55),
          cost: 22,
          co2Kg: 4.3,
          co2SavedKgVsCar: 0,
          features: const ['Parking limité', 'Embouteillages'],
        ),
      ];

  List<TransportOption> _parisToNantes(String eventId) => [
        TransportOption(
          id: '${eventId}_t1',
          mode: TransportMode.train,
          title: 'TGV Paris → Nantes',
          description: 'Direct depuis Montparnasse',
          duration: const Duration(hours: 2, minutes: 5),
          cost: 62,
          co2Kg: 1.2,
          co2SavedKgVsCar: 38.8,
          features: const ['Direct', 'Wi-Fi', '1ère classe disponible'],
          isRecommended: true,
          operator: 'SNCF',
        ),
        TransportOption(
          id: '${eventId}_t2',
          mode: TransportMode.bus,
          title: 'Bus collectif Hellfest',
          description: 'Aller-retour organisé',
          duration: const Duration(hours: 5, minutes: 30),
          cost: 35,
          co2Kg: 6.8,
          co2SavedKgVsCar: 33.2,
          features: const ['Aller-retour', 'Bagage inclus', 'Convivial'],
          operator: 'FlixBus',
        ),
        TransportOption(
          id: '${eventId}_t3',
          mode: TransportMode.carpool,
          title: 'Covoiturage',
          description: '3 places dispo • Profil vérifié',
          duration: const Duration(hours: 4, minutes: 15),
          cost: 28,
          co2Kg: 10.5,
          co2SavedKgVsCar: 29.5,
          features: const ['Profil 4.8★', 'Non-fumeur', 'Bagages OK'],
          operator: 'BlaBlaCar',
        ),
        TransportOption(
          id: '${eventId}_t4',
          mode: TransportMode.multimodal,
          title: 'TGV + Vélo',
          description: 'Train jusqu\'à Nantes, vélo location',
          duration: const Duration(hours: 3),
          cost: 70,
          co2Kg: 1.4,
          co2SavedKgVsCar: 38.6,
          features: const ['Train + vélo', 'Liberté', 'Découverte'],
          operator: 'SNCF + Vélo+',
        ),
        TransportOption(
          id: '${eventId}_t5',
          mode: TransportMode.car,
          title: 'Voiture solo',
          description: '385 km autoroute',
          duration: const Duration(hours: 4),
          cost: 95,
          co2Kg: 40,
          co2SavedKgVsCar: 0,
          features: const ['Péages 38€', 'Carburant 57€'],
        ),
      ];

  List<TransportOption> _parisToAvignon(String eventId) => [
        TransportOption(
          id: '${eventId}_t1',
          mode: TransportMode.train,
          title: 'TGV Paris → Avignon',
          description: 'Direct depuis Lyon',
          duration: const Duration(hours: 2, minutes: 40),
          cost: 78,
          co2Kg: 1.6,
          co2SavedKgVsCar: 48.4,
          features: const ['Direct', 'Wi-Fi', 'Vue panoramique'],
          isRecommended: true,
          operator: 'SNCF',
        ),
        TransportOption(
          id: '${eventId}_t2',
          mode: TransportMode.bus,
          title: 'Bus FlixBus',
          description: 'Aller direct',
          duration: const Duration(hours: 8, minutes: 30),
          cost: 29,
          co2Kg: 9.8,
          co2SavedKgVsCar: 40.2,
          features: const ['Économique', 'Wi-Fi'],
          operator: 'FlixBus',
        ),
        TransportOption(
          id: '${eventId}_t3',
          mode: TransportMode.carpool,
          title: 'Covoiturage',
          description: '4 places dispo',
          duration: const Duration(hours: 7),
          cost: 42,
          co2Kg: 13.2,
          co2SavedKgVsCar: 36.8,
          features: const ['Profil 4.9★', 'Animaux OK'],
          operator: 'BlaBlaCar',
        ),
        TransportOption(
          id: '${eventId}_t4',
          mode: TransportMode.car,
          title: 'Voiture solo',
          description: '690 km autoroute',
          duration: const Duration(hours: 6, minutes: 45),
          cost: 145,
          co2Kg: 50,
          co2SavedKgVsCar: 0,
          features: const ['Péages 68€', 'Carburant 77€'],
        ),
      ];

  List<TransportOption> _genericIntercityOptions(String eventId) => [
        TransportOption(
          id: '${eventId}_t1',
          mode: TransportMode.train,
          title: 'TER + TGV recommandé',
          description: 'Trajet bas carbone optimisé',
          duration: const Duration(hours: 3, minutes: 30),
          cost: 55,
          co2Kg: 1.8,
          co2SavedKgVsCar: 28.2,
          features: const ['Le plus rapide', 'Wi-Fi'],
          isRecommended: true,
          operator: 'SNCF',
        ),
        TransportOption(
          id: '${eventId}_t2',
          mode: TransportMode.bus,
          title: 'Bus longue distance',
          description: 'Économique et convivial',
          duration: const Duration(hours: 5),
          cost: 32,
          co2Kg: 5.4,
          co2SavedKgVsCar: 24.6,
          features: const ['Le moins cher', 'Confortable'],
          operator: 'FlixBus',
        ),
        TransportOption(
          id: '${eventId}_t3',
          mode: TransportMode.carpool,
          title: 'Covoiturage',
          description: 'Profils vérifiés',
          duration: const Duration(hours: 4),
          cost: 25,
          co2Kg: 8.2,
          co2SavedKgVsCar: 21.8,
          features: const ['Flexible', 'Convivial'],
          operator: 'BlaBlaCar',
        ),
        TransportOption(
          id: '${eventId}_t4',
          mode: TransportMode.car,
          title: 'Voiture solo',
          description: 'Itinéraire le plus rapide',
          duration: const Duration(hours: 4, minutes: 15),
          cost: 75,
          co2Kg: 30,
          co2SavedKgVsCar: 0,
          features: const ['Liberté totale'],
        ),
      ];
}
