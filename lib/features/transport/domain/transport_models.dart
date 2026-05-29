/// Transport modes available in Pulsar.
enum TransportMode {
  train,
  bus,
  carpool,
  multimodal,
  bike,
  car,
}

extension TransportModeX on TransportMode {
  String get emoji {
    switch (this) {
      case TransportMode.train:
        return '🚆';
      case TransportMode.bus:
        return '🚌';
      case TransportMode.carpool:
        return '🚗';
      case TransportMode.multimodal:
        return '🔀';
      case TransportMode.bike:
        return '🚲';
      case TransportMode.car:
        return '🛻';
    }
  }

  String get label {
    switch (this) {
      case TransportMode.train:
        return 'Train';
      case TransportMode.bus:
        return 'Bus';
      case TransportMode.carpool:
        return 'Covoiturage';
      case TransportMode.multimodal:
        return 'Multimodal';
      case TransportMode.bike:
        return 'Vélo';
      case TransportMode.car:
        return 'Voiture';
    }
  }
}

/// A single transport option for an event.
class TransportOption {
  final String id;
  final TransportMode mode;
  final String title;          // e.g., "TGV Paris → Nantes"
  final String description;    // e.g., "Direct, 2 correspondances"
  final Duration duration;
  final double cost;            // EUR
  final double co2Kg;           // emissions for this option
  final double co2SavedKgVsCar; // saved vs solo car
  final List<String> features;
  final bool isRecommended;
  final String? operator;       // e.g., "SNCF", "BlaBlaCar"

  const TransportOption({
    required this.id,
    required this.mode,
    required this.title,
    required this.description,
    required this.duration,
    required this.cost,
    required this.co2Kg,
    required this.co2SavedKgVsCar,
    this.features = const [],
    this.isRecommended = false,
    this.operator,
  });

  String get durationLabel {
    final h = duration.inHours;
    final m = duration.inMinutes % 60;
    if (h == 0) return '${m}min';
    if (m == 0) return '${h}h';
    return '${h}h${m.toString().padLeft(2, '0')}';
  }

  /// Eco-score 0-100 (higher = greener).
  int get ecoScore {
    const maxSaved = 50.0;
    final score = (co2SavedKgVsCar / maxSaved * 100).clamp(0, 100).round();
    return score;
  }

  String get ecoGrade {
    if (ecoScore >= 85) return 'A+';
    if (ecoScore >= 70) return 'A';
    if (ecoScore >= 55) return 'B';
    if (ecoScore >= 40) return 'C';
    if (ecoScore >= 25) return 'D';
    return 'E';
  }
}

/// Sort criteria for transport comparator.
enum TransportSortBy {
  ecoScore,
  duration,
  cost,
}
