import 'package:latlong2/latlong.dart';

/// Coordinates lookup for each event by eventId.
/// Kept separate from the Isar schema to avoid migrations.
class EventLocations {
  EventLocations._();

  static const _map = <String, LatLng>{
    'hellfest-2026': LatLng(47.0784, -1.2742), // Clisson
    'we-love-green-2026': LatLng(48.8290, 2.4140), // Bois de Vincennes
    'paris-games-week-2026': LatLng(48.8323, 2.2877), // Porte de Versailles
    'festival-avignon-2026': LatLng(43.9493, 4.8055), // Avignon
    'phoenix-olympia-2026': LatLng(48.8703, 2.3284), // Olympia
    'solidays-2026': LatLng(48.8589, 2.2452), // Longchamp
    'nuit-musees-2026': LatLng(48.8606, 2.3376), // Louvre area
    'rolland-garros-2026': LatLng(48.8470, 2.2530), // Roland-Garros
    'tomorrowland-2026': LatLng(45.0905, 6.0697), // Alpe d'Huez
    'vieilles-charrues-2026': LatLng(48.2767, -3.5747), // Carhaix
    'arctic-monkeys-2026': LatLng(48.8388, 2.3784), // Accor Arena
    'jazz-marciac-2026': LatLng(43.5258, 0.1597), // Marciac
    'gamescom-2026': LatLng(48.8323, 2.2877), // Porte de Versailles
    'opera-aida-2026': LatLng(48.8530, 2.3697), // Opéra Bastille
    'marathon-paris-2026': LatLng(48.8698, 2.3076), // Champs-Élysées
    'biennale-design-2026': LatLng(45.4297, 4.3920), // Saint-Étienne
  };

  static LatLng? forEvent(String eventId) => _map[eventId];

  /// Center of all known event locations (~France geographic center).
  static const center = LatLng(46.5, 2.3);
}
