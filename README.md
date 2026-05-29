# Flowee — La mobilité événementielle réinventée

> Transport intelligent, hébergement optimisé, impact carbone réduit.

## Architecture

```
Feature-First Clean Architecture
├── core/           → Theme, Router, Database, Providers, Widgets
└── features/       → Each feature has data/ domain/ presentation/
    ├── auth/
    ├── home/
    ├── events/
    ├── tickets/
    ├── profile/
    ├── cart/
    ├── transport/
    ├── accommodation/
    ├── eco/
    └── settings/
```

## Stack technique

| Couche | Technologie |
|--------|-------------|
| State Management | Riverpod 2.x |
| Routing | GoRouter (ShellRoute + typed routes) |
| Database locale | Isar 3.x (offline-first) |
| Modèles | Freezed + json_serializable |
| UI | Material 3, flutter_animate, cached_network_image |
| Auth | Firebase Auth (Google + Apple + email) |
| Notifications | Firebase Messaging |
| QR Codes | qr_flutter + mobile_scanner |
| Export | pdf + csv |
| i18n | FR + EN (ARB files) |

## Mise en route

### Prérequis
- Flutter SDK ≥ 3.5.0
- Dart SDK ≥ 3.5.0
- Android Studio ou Xcode

### Installation

```bash
# 1. Cloner ou extraire le projet
cd flowee_app

# 2. Installer les dépendances
flutter pub get
    
# 3. Générer le code (Freezed, Isar, Riverpod)
dart run build_runner build --delete-conflicting-outputs

# 4. Générer les localisations
flutter gen-l10n

# 5. Lancer l'app
flutter run
```

### Polices (optionnel)
L'app utilise Google Fonts (chargement réseau par défaut).
Pour un chargement offline, télécharge Space Grotesk depuis Google Fonts
et place les fichiers `.ttf` dans `assets/fonts/`.

## Fonctionnalités implémentées

### MVP (depuis le projet web original)
- ✅ Catalogue d'événements (tendances + à venir)
- ✅ Filtres par genre (Rock, Électro, Spectacles, etc.)
- ✅ Recherche d'événements
- ✅ Détail événement (transport, hébergement, prix)
- ✅ Panier d'achat avec checkout
- ✅ Billets avec QR codes
- ✅ Profil utilisateur avec stats
- ✅ Navigation bottom bar (4 onglets)

### Premium (ajoutées)
- ✅ Mode sombre / clair (Material 3)
- ✅ Internationalisation FR / EN
- ✅ Base de données locale Isar (offline-first)
- ✅ Animations fluides (flutter_animate)
- ✅ Éco-score et badges environnementaux
- ✅ Écran paramètres complet
- ✅ QR code billet avec dialog agrandir
- ✅ Système de favoris
- ✅ Architecture propre Feature-First

### À implémenter (prochaines étapes)
- 🔲 Firebase Auth (email + Google + Apple)
- 🔲 Firebase Messaging (notifications push)
- 🔲 Covoiturage entre participants
- 🔲 Achat intégré titres de transport
- 🔲 Messagerie interne
- 🔲 Hébergement collaboratif
- 🔲 Export PDF/CSV
- 🔲 Partage social
- 🔲 Carte interactive du site
- 🔲 Assistant de planification intelligent
- 🔲 Espace organisateur B2B
- 🔲 Tests unitaires et d'intégration

## Structure des fichiers clés

```
lib/
├── main.dart                              → Entry point
├── core/
│   ├── theme/
│   │   ├── colors.dart                    → Palette Flowee
│   │   └── app_theme.dart                 → Light + Dark themes
│   ├── router/
│   │   └── app_router.dart                → GoRouter config
│   ├── database/
│   │   ├── isar_collections.dart          → Isar schemas
│   │   ├── isar_service.dart              → DB singleton
│   │   └── seed_data.dart                 → Demo data
│   ├── providers/
│   │   ├── core_providers.dart            → Isar + repos
│   │   ├── theme_provider.dart            → Dark mode
│   │   └── locale_provider.dart           → FR/EN
│   └── widgets/
│       ├── app_shell.dart                 → Bottom nav scaffold
│       └── gradient_button.dart           → CTA button
├── features/
│   ├── events/
│   │   ├── domain/event_model.dart        → Freezed model
│   │   ├── data/event_repository.dart     → Isar CRUD
│   │   └── presentation/
│   │       ├── providers/                 → Riverpod state
│   │       ├── screens/                   → Explore + Detail
│   │       └── widgets/                   → EventCard, Chips
│   ├── home/presentation/screens/         → Home screen
│   ├── tickets/                           → Tickets + QR
│   ├── cart/                              → Shopping cart
│   ├── profile/                           → User profile
│   └── settings/                          → App settings
```

## Licence

Projet privé — Tous droits réservés.
