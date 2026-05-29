import 'package:isar/isar.dart';
import '../database/isar_collections.dart';

/// Seeds the local database with demo events on first launch.
/// User profile is created during registration — not seeded here.
class SeedData {
  SeedData._();

  /// Marker event ID — bump when seed content changes to force re-seed.
  static const _seedMarkerEventId = 'biennale-design-2026';

  static Future<void> seedIfEmpty(Isar isar) async {
    // Always make sure app-wide singletons exist
    await _seedAppSettingsIfMissing(isar);
    await _seedPromoCodesIfMissing(isar);

    // If the latest seed marker exists, we have current event content
    final marker = await isar.isarEvents
        .filter()
        .eventIdEqualTo(_seedMarkerEventId)
        .findFirst();
    if (marker != null) return;

    // Stale or empty — wipe events and re-seed
    await isar.writeTxn(() async {
      await isar.isarEvents.clear();
    });
    await _seedEvents(isar);
  }

  static Future<void> _seedAppSettingsIfMissing(Isar isar) async {
    final existing =
        await isar.isarAppSettings.filter().keyEqualTo('app').findFirst();
    if (existing != null) return;
    final defaults = IsarAppSettings()
      ..key = 'app'
      ..taxRate = 0.20
      ..serviceFeeRate = 0.05
      ..supportEmail = 'support@pulsar.app'
      ..maintenanceMode = false
      ..maintenanceMessage = ''
      ..featuredEventIds = const []
      ..maxTicketsPerOrder = 10
      ..currencyCode = 'EUR'
      ..currencySymbol = '€'
      ..updatedAt = DateTime.now()
      ..paymentSimulation = true;
    await isar.writeTxn(() async {
      await isar.isarAppSettings.put(defaults);
    });
  }

  static Future<void> _seedPromoCodesIfMissing(Isar isar) async {
    final existing = await isar.isarPromoCodes.count();
    if (existing > 0) return;

    final now = DateTime.now();
    final promos = <IsarPromoCode>[
      IsarPromoCode()
        ..code = 'PULSAR10'
        ..label = '10% sur ta première commande'
        ..emoji = '✨'
        ..discountType = 'percent'
        ..discountValue = 10
        ..minSubtotal = 0
        ..maxUses = 0
        ..usedCount = 0
        ..isActive = true
        ..createdAt = now
        ..createdByEmail = 'seed@pulsar.app',
      IsarPromoCode()
        ..code = 'ECO20'
        ..label = '20% — Mode éco activé'
        ..emoji = '🌱'
        ..discountType = 'percent'
        ..discountValue = 20
        ..minSubtotal = 100
        ..maxUses = 0
        ..usedCount = 0
        ..isActive = true
        ..createdAt = now
        ..createdByEmail = 'seed@pulsar.app',
      IsarPromoCode()
        ..code = 'SUMMER50'
        ..label = "50€ sur les festivals d'été"
        ..emoji = '☀️'
        ..discountType = 'fixed'
        ..discountValue = 50
        ..minSubtotal = 200
        ..maxUses = 0
        ..usedCount = 0
        ..isActive = true
        ..createdAt = now
        ..createdByEmail = 'seed@pulsar.app',
      IsarPromoCode()
        ..code = 'STUDENT15'
        ..label = '15% étudiant'
        ..emoji = '🎓'
        ..discountType = 'percent'
        ..discountValue = 15
        ..minSubtotal = 0
        ..maxUses = 0
        ..usedCount = 0
        ..isActive = true
        ..createdAt = now
        ..createdByEmail = 'seed@pulsar.app',
      IsarPromoCode()
        ..code = 'BLACKFRIDAY'
        ..label = '-30% Black Friday'
        ..emoji = '🛍️'
        ..discountType = 'percent'
        ..discountValue = 30
        ..minSubtotal = 150
        ..maxUses = 0
        ..usedCount = 0
        ..isActive = true
        ..createdAt = now
        ..createdByEmail = 'seed@pulsar.app',
    ];
    await isar.writeTxn(() async {
      await isar.isarPromoCodes.putAll(promos);
    });
  }

  static Future<void> _seedEvents(Isar isar) async {
    final events = <IsarEvent>[
      // ── Trending ──
      _makeEvent(
        eventId: 'hellfest-2026',
        name: 'Hellfest 2026',
        category: 'Festival',
        duration: '3 jours',
        imageUrl:
            'https://hellfest-bucket.fra1.digitaloceanspaces.com/HF_2026_header_fb_76675f0639.jpg',
        gradient:
            'linear-gradient(135deg, #f093fb 0%, #f5576c 50%, #fd8451 100%)',
        date: '19-21 juin 2026',
        location: 'Clisson, Loire-Atlantique',
        transport: 'Bus collectif Paris • 35€',
        accommodation: 'Camping équipé • 50€/nuit',
        pricingLabel: 'Pack complet',
        pricingAmount: 375,
        pricingSavings: 485,
        genres: ['rock', 'metal'],
        badgeTypes: ['eco', 'hot'],
        badgeTexts: ['🌱 -78% CO₂', '🔥 Populaire'],
        section: 'trending',
        sortOrder: 0,
      ),
      _makeEvent(
        eventId: 'we-love-green-2026',
        name: 'We Love Green',
        category: 'Festival',
        duration: '3 jours',
        imageUrl:
            'https://tse3.mm.bing.net/th/id/OIP._U0VnOWulTG5uie7vWUuMwHaEr?rs=1&pid=ImgDetMain&o=7&rm=3',
        gradient:
            'linear-gradient(135deg, #4facfe 0%, #00f2fe 50%, #43e97b 100%)',
        date: '5-7 juin 2026',
        location: 'Bois de Vincennes, Paris',
        transport: 'Métro direct inclus',
        accommodation: 'Auberge éco • 38€/nuit',
        pricingLabel: '3 jours',
        pricingAmount: 195,
        pricingSavings: 205,
        genres: ['electro', 'pop'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -85% CO₂'],
        section: 'trending',
        sortOrder: 1,
      ),
      _makeEvent(
        eventId: 'paris-games-week-2026',
        name: 'Paris Games Week',
        category: 'Salon',
        duration: '5 jours',
        imageUrl:
            'https://www.journaldugeek.com/app/uploads/2024/04/paris-games-week-1400x932.jpg',
        gradient:
            'linear-gradient(135deg, #fa709a 0%, #fee140 50%, #30cfd0 100%)',
        date: '23-27 octobre 2026',
        location: 'Paris Expo, Porte de Versailles',
        transport: 'TGV + navette • 42€',
        accommodation: 'Hostel gaming • 30€/nuit',
        pricingLabel: 'Pass 3 jours',
        pricingAmount: 135,
        pricingSavings: 110,
        genres: ['gaming'],
        badgeTypes: ['new', 'eco'],
        badgeTexts: ['✨ Nouveau', '🌱 -62% CO₂'],
        section: 'trending',
        sortOrder: 2,
      ),
      _makeEvent(
        eventId: 'festival-avignon-2026',
        name: "Festival d'Avignon",
        category: 'Festival',
        duration: '20 jours',
        imageUrl:
            'https://festival-avignon.com/storage/image/3/3_62e014bfa94b3.jpeg',
        gradient:
            'linear-gradient(135deg, #a8edea 0%, #fed6e3 50%, #fbc2eb 100%)',
        date: '7-26 juillet 2026',
        location: 'Avignon, Vaucluse',
        transport: 'TGV direct • 62€',
        accommodation: "Chambre d'hôte • 45€/nuit",
        pricingLabel: '4 jours',
        pricingAmount: 305,
        pricingSavings: 245,
        genres: ['spectacles', 'culturel'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -70% CO₂'],
        section: 'trending',
        sortOrder: 3,
      ),

      // ── Upcoming ──
      _makeEvent(
        eventId: 'phoenix-olympia-2026',
        name: "Phoenix à l'Olympia",
        category: 'Concert',
        duration: '1 soir',
        imageUrl:
            'https://cambiandomty.com/wp-content/uploads/2022/10/Nota-29-phoenix-1024x637.png',
        gradient: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
        date: '12 février 2026',
        location: 'Paris, Olympia',
        transport: 'Métro direct',
        accommodation: null,
        pricingLabel: 'Billet seul',
        pricingAmount: 68,
        pricingSavings: null,
        pricingSavingsText: '✅ Transport gratuit',
        genres: ['rock', 'pop'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -75% CO₂'],
        section: 'upcoming',
        sortOrder: 0,
      ),
      _makeEvent(
        eventId: 'solidays-2026',
        name: 'Solidays 2026',
        category: 'Festival',
        duration: '3 jours',
        imageUrl:
            'https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=800',
        gradient: 'linear-gradient(135deg, #f7971e 0%, #ffd200 100%)',
        date: '26-28 juin 2026',
        location: 'Hippodrome de Longchamp, Paris',
        transport: 'Métro + navette • 5€',
        accommodation: null,
        pricingLabel: 'Pass 3 jours',
        pricingAmount: 159,
        pricingSavings: 90,
        genres: ['electro', 'pop', 'rock'],
        badgeTypes: ['eco', 'hot'],
        badgeTexts: ['🌱 -90% CO₂', '🔥 Populaire'],
        section: 'upcoming',
        sortOrder: 1,
      ),
      _makeEvent(
        eventId: 'nuit-musees-2026',
        name: 'Nuit des Musées',
        category: 'Événement',
        duration: '1 soir',
        imageUrl:
            'https://images.unsplash.com/photo-1554907984-15263bfd63bd?w=800',
        gradient: 'linear-gradient(135deg, #0c3483 0%, #a2b6df 100%)',
        date: '16 mai 2026',
        location: 'Musées de Paris',
        transport: 'Métro direct',
        accommodation: null,
        pricingLabel: 'Entrée',
        pricingAmount: 0,
        pricingSavings: null,
        pricingSavingsText: '🎉 Gratuit',
        genres: ['culturel'],
        badgeTypes: ['new', 'eco'],
        badgeTexts: ['✨ Nouveau', '🌱 -95% CO₂'],
        section: 'upcoming',
        sortOrder: 2,
      ),

      // ── More trending ──
      _makeEvent(
        eventId: 'rolland-garros-2026',
        name: 'Roland-Garros',
        category: 'Sport',
        duration: '2 semaines',
        imageUrl:
            'https://images.unsplash.com/photo-1622279457486-62dcc4a431d6?w=800',
        gradient: 'linear-gradient(135deg, #f54ea2 0%, #ff7676 100%)',
        date: '25 mai - 8 juin 2026',
        location: 'Stade Roland-Garros, Paris',
        transport: 'Métro ligne 10 inclus',
        accommodation: 'Hôtels partenaires • 95€/nuit',
        pricingLabel: 'Place court central',
        pricingAmount: 145,
        pricingSavings: 60,
        genres: ['sport', 'tennis'],
        badgeTypes: ['hot', 'eco'],
        badgeTexts: ['🔥 Trending', '🌱 -80% CO₂'],
        section: 'trending',
        sortOrder: 4,
      ),
      _makeEvent(
        eventId: 'tomorrowland-2026',
        name: 'Tomorrowland Winter',
        category: 'Festival',
        duration: '5 jours',
        imageUrl:
            'https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?w=800',
        gradient: 'linear-gradient(135deg, #43cea2 0%, #185a9d 100%)',
        date: '14-19 mars 2026',
        location: 'Alpe d\'Huez, France',
        transport: 'TGV + navette ski • 95€',
        accommodation: 'Chalet partagé • 65€/nuit',
        pricingLabel: 'Pass complet',
        pricingAmount: 489,
        pricingSavings: 320,
        genres: ['electro', 'house', 'techno'],
        badgeTypes: ['hot', 'eco'],
        badgeTexts: ['🔥 Iconique', '🌱 -65% CO₂'],
        section: 'trending',
        sortOrder: 5,
      ),
      _makeEvent(
        eventId: 'vieilles-charrues-2026',
        name: 'Les Vieilles Charrues',
        category: 'Festival',
        duration: '4 jours',
        imageUrl:
            'https://images.unsplash.com/photo-1506157786151-b8491531f063?w=800',
        gradient: 'linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%)',
        date: '16-19 juillet 2026',
        location: 'Carhaix, Bretagne',
        transport: 'Train + bus • 58€',
        accommodation: 'Camping inclus',
        pricingLabel: 'Pass 4 jours',
        pricingAmount: 199,
        pricingSavings: 145,
        genres: ['rock', 'pop', 'folk'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -82% CO₂'],
        section: 'trending',
        sortOrder: 6,
      ),

      // ── More upcoming ──
      _makeEvent(
        eventId: 'arctic-monkeys-2026',
        name: 'Arctic Monkeys',
        category: 'Concert',
        duration: '1 soir',
        imageUrl:
            'https://images.unsplash.com/photo-1501386761578-eac5c94b800a?w=800',
        gradient: 'linear-gradient(135deg, #3a1c71 0%, #d76d77 50%, #ffaf7b 100%)',
        date: '8 octobre 2026',
        location: 'Accor Arena, Paris',
        transport: 'Métro Bercy direct',
        accommodation: null,
        pricingLabel: 'Fosse debout',
        pricingAmount: 75,
        pricingSavings: 25,
        genres: ['rock', 'indie'],
        badgeTypes: ['hot', 'eco'],
        badgeTexts: ['🔥 Quasi sold out', '🌱 -88% CO₂'],
        section: 'upcoming',
        sortOrder: 3,
      ),
      _makeEvent(
        eventId: 'jazz-marciac-2026',
        name: 'Jazz in Marciac',
        category: 'Festival',
        duration: '15 jours',
        imageUrl:
            'https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?w=800',
        gradient: 'linear-gradient(135deg, #4b6cb7 0%, #182848 100%)',
        date: '20 juillet - 5 août 2026',
        location: 'Marciac, Gers',
        transport: 'Train + bus • 72€',
        accommodation: 'Chez l\'habitant • 35€/nuit',
        pricingLabel: 'Pass 3 jours',
        pricingAmount: 165,
        pricingSavings: 90,
        genres: ['jazz', 'blues'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -75% CO₂'],
        section: 'upcoming',
        sortOrder: 4,
      ),
      _makeEvent(
        eventId: 'gamescom-2026',
        name: 'Gamescom Paris',
        category: 'Salon',
        duration: '4 jours',
        imageUrl:
            'https://images.unsplash.com/photo-1542751371-adc38448a05e?w=800',
        gradient: 'linear-gradient(135deg, #654ea3 0%, #eaafc8 100%)',
        date: '12-15 novembre 2026',
        location: 'Paris Expo, Porte de Versailles',
        transport: 'Métro ligne 12',
        accommodation: 'Hostel gamer • 38€/nuit',
        pricingLabel: 'Pass 2 jours',
        pricingAmount: 89,
        pricingSavings: 35,
        genres: ['gaming', 'tech'],
        badgeTypes: ['new'],
        badgeTexts: ['✨ Première édition'],
        section: 'upcoming',
        sortOrder: 5,
      ),
      _makeEvent(
        eventId: 'opera-aida-2026',
        name: 'Aida — Opéra Bastille',
        category: 'Opéra',
        duration: '1 soir',
        imageUrl:
            'https://images.unsplash.com/photo-1503095396549-807759245b35?w=800',
        gradient: 'linear-gradient(135deg, #c31432 0%, #240b36 100%)',
        date: '22 septembre 2026',
        location: 'Opéra Bastille, Paris',
        transport: 'Métro Bastille direct',
        accommodation: null,
        pricingLabel: 'Catégorie 3',
        pricingAmount: 95,
        pricingSavings: null,
        genres: ['opera', 'classique'],
        badgeTypes: ['eco'],
        badgeTexts: ['🌱 -92% CO₂'],
        section: 'upcoming',
        sortOrder: 6,
      ),
      _makeEvent(
        eventId: 'marathon-paris-2026',
        name: 'Marathon de Paris',
        category: 'Sport',
        duration: '1 jour',
        imageUrl:
            'https://images.unsplash.com/photo-1452626038306-9aae5e071dd3?w=800',
        gradient: 'linear-gradient(135deg, #f12711 0%, #f5af19 100%)',
        date: '12 avril 2026',
        location: 'Champs-Élysées, Paris',
        transport: 'Métro inclus',
        accommodation: null,
        pricingLabel: 'Dossard runner',
        pricingAmount: 119,
        pricingSavings: null,
        pricingSavingsText: '🏃 Inclut tee-shirt + médaille',
        genres: ['sport', 'running'],
        badgeTypes: ['hot', 'eco'],
        badgeTexts: ['🔥 Inscriptions ouvertes', '🌱 -100% CO₂'],
        section: 'trending',
        sortOrder: 7,
      ),
      _makeEvent(
        eventId: 'biennale-design-2026',
        name: 'Biennale Internationale Design',
        category: 'Exposition',
        duration: '6 semaines',
        imageUrl:
            'https://images.unsplash.com/photo-1561070791-2526d30994b8?w=800',
        gradient: 'linear-gradient(135deg, #ee9ca7 0%, #ffdde1 100%)',
        date: '5 sept - 18 oct 2026',
        location: 'Cité du Design, Saint-Étienne',
        transport: 'TGV direct • 48€',
        accommodation: 'B&B éco • 55€/nuit',
        pricingLabel: 'Pass illimité',
        pricingAmount: 38,
        pricingSavings: 12,
        genres: ['design', 'art', 'culturel'],
        badgeTypes: ['new', 'eco'],
        badgeTexts: ['✨ Nouveau', '🌱 -78% CO₂'],
        section: 'upcoming',
        sortOrder: 7,
      ),
    ];

    await isar.writeTxn(() async {
      await isar.isarEvents.putAll(events);
    });
  }

  static IsarEvent _makeEvent({
    required String eventId,
    required String name,
    required String category,
    required String duration,
    required String imageUrl,
    required String gradient,
    required String date,
    required String location,
    required String transport,
    String? accommodation,
    required String pricingLabel,
    required double pricingAmount,
    double? pricingSavings,
    String? pricingSavingsText,
    required List<String> genres,
    required List<String> badgeTypes,
    required List<String> badgeTexts,
    required String section,
    required int sortOrder,
  }) {
    return IsarEvent()
      ..eventId = eventId
      ..name = name
      ..category = category
      ..duration = duration
      ..imageUrl = imageUrl
      ..gradient = gradient
      ..date = date
      ..location = location
      ..transport = transport
      ..accommodation = accommodation
      ..pricingLabel = pricingLabel
      ..pricingAmount = pricingAmount
      ..pricingSavings = pricingSavings
      ..pricingSavingsText = pricingSavingsText
      ..currency = '€'
      ..genres = genres
      ..badgeTypes = badgeTypes
      ..badgeTexts = badgeTexts
      ..isFavorite = false
      ..section = section
      ..sortOrder = sortOrder;
  }
}
