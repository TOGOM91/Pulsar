import '../domain/accommodation_models.dart';

class AccommodationService {
  AccommodationService();

  /// Generates 5-6 accommodation options for a given event location.
  List<Accommodation> getOptionsForEvent({
    required String eventId,
    required String eventLocation,
  }) {
    final lower = eventLocation.toLowerCase();
    if (lower.contains('clisson') || lower.contains('nantes')) {
      return _clissonOptions(eventId);
    }
    if (lower.contains('avignon')) {
      return _avignonOptions(eventId);
    }
    if (lower.contains('paris') || lower.contains('longchamp')) {
      return _parisOptions(eventId);
    }
    return _genericOptions(eventId);
  }

  List<Accommodation> _clissonOptions(String eventId) => [
        Accommodation(
          id: '${eventId}_a1',
          type: AccommodationType.camping,
          name: 'Camping officiel Hellfest',
          location: 'À 500m du site',
          pricePerNight: 25,
          rating: 4.6,
          reviewCount: 1284,
          hostName: 'Hellfest Productions',
          hostVerified: true,
          amenities: const ['Douches', 'Toilettes', 'Sécurité 24/7', 'Bar'],
          imageUrl:
              'https://images.unsplash.com/photo-1504280390367-361c6d9f38f4?w=600',
          distanceMeters: 500,
          isRecommended: true,
        ),
        Accommodation(
          id: '${eventId}_a2',
          type: AccommodationType.hostFamily,
          name: 'Chambre chez Marie',
          location: 'Centre-ville Clisson',
          pricePerNight: 45,
          rating: 4.9,
          reviewCount: 67,
          hostName: 'Marie L.',
          hostVerified: true,
          amenities: const ['Petit-déj inclus', 'Wi-Fi', 'Calme'],
          imageUrl:
              'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=600',
          distanceMeters: 2500,
        ),
        Accommodation(
          id: '${eventId}_a3',
          type: AccommodationType.hotel,
          name: 'Hôtel Best Western Nantes',
          location: 'Centre Nantes',
          pricePerNight: 89,
          rating: 4.3,
          reviewCount: 412,
          hostName: 'Best Western',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Parking', 'Wi-Fi', 'Climatisation'],
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=600',
          distanceMeters: 28000,
        ),
        Accommodation(
          id: '${eventId}_a4',
          type: AccommodationType.bnb,
          name: 'La Maison du Vignoble',
          location: 'Vignoble nantais',
          pricePerNight: 75,
          rating: 4.8,
          reviewCount: 153,
          hostName: 'Paul & Sophie',
          hostVerified: true,
          amenities: const ['Piscine', 'Wi-Fi', 'Vue vignes', 'Calme'],
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=600',
          distanceMeters: 8500,
        ),
        Accommodation(
          id: '${eventId}_a5',
          type: AccommodationType.hostel,
          name: 'Auberge de Jeunesse Nantes',
          location: 'Quartier Bouffay',
          pricePerNight: 32,
          rating: 4.1,
          reviewCount: 891,
          hostName: 'HI Hostels',
          hostVerified: true,
          amenities: const ['Dortoir', 'Cuisine commune', 'Wi-Fi'],
          imageUrl:
              'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=600',
          distanceMeters: 32000,
        ),
      ];

  List<Accommodation> _avignonOptions(String eventId) => [
        Accommodation(
          id: '${eventId}_a1',
          type: AccommodationType.bnb,
          name: 'Mas en Provence',
          location: 'Périphérie Avignon',
          pricePerNight: 85,
          rating: 4.9,
          reviewCount: 234,
          hostName: 'Famille Durand',
          hostVerified: true,
          amenities: const ['Piscine', 'Petit-déj', 'Parking', 'Climatisation'],
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=600',
          distanceMeters: 3500,
          isRecommended: true,
        ),
        Accommodation(
          id: '${eventId}_a2',
          type: AccommodationType.hotel,
          name: 'Hôtel de la Mirande',
          location: 'Centre historique',
          pricePerNight: 195,
          rating: 4.7,
          reviewCount: 567,
          hostName: 'Hôtel de la Mirande',
          hostVerified: true,
          amenities: const ['Spa', 'Restaurant', 'Concierge', 'Wi-Fi'],
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=600',
          distanceMeters: 800,
        ),
        Accommodation(
          id: '${eventId}_a3',
          type: AccommodationType.hostel,
          name: 'YMCA Avignon',
          location: 'Île de la Barthelasse',
          pricePerNight: 28,
          rating: 4.0,
          reviewCount: 412,
          hostName: 'YMCA France',
          hostVerified: true,
          amenities: const ['Dortoir', 'Cuisine', 'Wi-Fi', 'Jardin'],
          imageUrl:
              'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=600',
          distanceMeters: 2000,
        ),
        Accommodation(
          id: '${eventId}_a4',
          type: AccommodationType.hostFamily,
          name: 'Chez Jean-Luc',
          location: 'Quartier des Carmes',
          pricePerNight: 55,
          rating: 4.8,
          reviewCount: 89,
          hostName: 'Jean-Luc',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Wi-Fi', 'Conseils locaux'],
          imageUrl:
              'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=600',
          distanceMeters: 1200,
        ),
      ];

  List<Accommodation> _parisOptions(String eventId) => [
        Accommodation(
          id: '${eventId}_a1',
          type: AccommodationType.hostel,
          name: 'St Christopher\'s Gare du Nord',
          location: '10ème arrondissement',
          pricePerNight: 38,
          rating: 4.2,
          reviewCount: 2891,
          hostName: 'St Christopher\'s Inns',
          hostVerified: true,
          amenities: const ['Bar', 'Wi-Fi', 'Petit-déj', 'Casiers'],
          imageUrl:
              'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=600',
          distanceMeters: 4500,
          isRecommended: true,
        ),
        Accommodation(
          id: '${eventId}_a2',
          type: AccommodationType.hotel,
          name: 'Hôtel Mercure Bastille',
          location: '11ème arrondissement',
          pricePerNight: 125,
          rating: 4.4,
          reviewCount: 1245,
          hostName: 'Accor Hotels',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Bar', 'Wi-Fi', 'Climatisation'],
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=600',
          distanceMeters: 3200,
        ),
        Accommodation(
          id: '${eventId}_a3',
          type: AccommodationType.hostFamily,
          name: 'Chez Camille (Montmartre)',
          location: '18ème, vue Sacré-Cœur',
          pricePerNight: 65,
          rating: 4.9,
          reviewCount: 156,
          hostName: 'Camille',
          hostVerified: true,
          amenities: const ['Wi-Fi', 'Petit-déj bio', 'Conseils locaux'],
          imageUrl:
              'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=600',
          distanceMeters: 6800,
        ),
        Accommodation(
          id: '${eventId}_a4',
          type: AccommodationType.bnb,
          name: 'Loft Canal Saint-Martin',
          location: '10ème, vue canal',
          pricePerNight: 110,
          rating: 4.7,
          reviewCount: 287,
          hostName: 'Thomas',
          hostVerified: true,
          amenities: const ['Cuisine équipée', 'Wi-Fi', 'Terrasse'],
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=600',
          distanceMeters: 5200,
        ),
      ];

  List<Accommodation> _genericOptions(String eventId) => [
        Accommodation(
          id: '${eventId}_a1',
          type: AccommodationType.hotel,
          name: 'Hôtel proche du site',
          location: 'À pied de l\'événement',
          pricePerNight: 89,
          rating: 4.3,
          reviewCount: 245,
          hostName: 'Hôtel local',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Wi-Fi', 'Parking'],
          imageUrl:
              'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=600',
          distanceMeters: 800,
          isRecommended: true,
        ),
        Accommodation(
          id: '${eventId}_a2',
          type: AccommodationType.bnb,
          name: 'B&B le Local',
          location: 'Centre-ville',
          pricePerNight: 65,
          rating: 4.7,
          reviewCount: 89,
          hostName: 'Sophie',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Wi-Fi', 'Calme'],
          imageUrl:
              'https://images.unsplash.com/photo-1564501049412-61c2a3083791?w=600',
          distanceMeters: 1500,
        ),
        Accommodation(
          id: '${eventId}_a3',
          type: AccommodationType.hostel,
          name: 'Auberge des Voyageurs',
          location: 'Quartier animé',
          pricePerNight: 28,
          rating: 4.0,
          reviewCount: 412,
          hostName: 'HI Hostels',
          hostVerified: true,
          amenities: const ['Dortoir', 'Cuisine', 'Wi-Fi'],
          imageUrl:
              'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?w=600',
          distanceMeters: 2500,
        ),
        Accommodation(
          id: '${eventId}_a4',
          type: AccommodationType.hostFamily,
          name: 'Chambre chez Marc',
          location: 'Quartier résidentiel',
          pricePerNight: 45,
          rating: 4.8,
          reviewCount: 56,
          hostName: 'Marc',
          hostVerified: true,
          amenities: const ['Petit-déj', 'Wi-Fi', 'Conseils locaux'],
          imageUrl:
              'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?w=600',
          distanceMeters: 3800,
        ),
      ];
}
