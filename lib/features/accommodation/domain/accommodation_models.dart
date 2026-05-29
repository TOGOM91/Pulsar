enum AccommodationType { hotel, hostel, bnb, camping, hostFamily }

extension AccommodationTypeX on AccommodationType {
  String get emoji {
    switch (this) {
      case AccommodationType.hotel:
        return '🏨';
      case AccommodationType.hostel:
        return '🛏️';
      case AccommodationType.bnb:
        return '🏡';
      case AccommodationType.camping:
        return '⛺';
      case AccommodationType.hostFamily:
        return '👨‍👩‍👧';
    }
  }

  String get label {
    switch (this) {
      case AccommodationType.hotel:
        return 'Hôtel';
      case AccommodationType.hostel:
        return 'Auberge';
      case AccommodationType.bnb:
        return 'B&B';
      case AccommodationType.camping:
        return 'Camping';
      case AccommodationType.hostFamily:
        return "Chez l'habitant";
    }
  }

  bool get isCollaborative =>
      this == AccommodationType.hostFamily || this == AccommodationType.bnb;
}

class Accommodation {
  final String id;
  final AccommodationType type;
  final String name;
  final String location;       // e.g., "À 800m du site"
  final double pricePerNight;
  final double rating;          // 0-5
  final int reviewCount;
  final String hostName;
  final bool hostVerified;
  final List<String> amenities; // ["Wi-Fi", "Petit-déjeuner", ...]
  final String imageUrl;
  final int distanceMeters;     // from the venue
  final bool isRecommended;

  const Accommodation({
    required this.id,
    required this.type,
    required this.name,
    required this.location,
    required this.pricePerNight,
    required this.rating,
    required this.reviewCount,
    required this.hostName,
    required this.hostVerified,
    required this.amenities,
    required this.imageUrl,
    required this.distanceMeters,
    this.isRecommended = false,
  });

  String get distanceLabel {
    if (distanceMeters < 1000) return '${distanceMeters}m';
    return '${(distanceMeters / 1000).toStringAsFixed(1)}km';
  }
}
