# Pulsar — La mobilité événementielle réinventée

> Billet, transport bas carbone, hébergement — tout en une app.

[![Latest release](https://img.shields.io/github/v/release/TOGOM91/Pulsar?style=flat-square)](https://github.com/TOGOM91/Pulsar/releases/latest)
[![Landing](https://img.shields.io/badge/landing-pulsar--7d45e.web.app-7C3AED?style=flat-square)](https://pulsar-7d45e.web.app)

## Téléchargements

| Plateforme | Lien |
|---|---|
| 💻 Windows 10 / 11 | [pulsar-windows.zip](https://pulsar-7d45e.web.app/downloads/pulsar-windows.zip) |
| 📱 Android 6.0+ | [pulsar-android.apk (GitHub Releases)](https://github.com/TOGOM91/Pulsar/releases/latest/download/pulsar-android.apk) |
| 🍎 iOS 15+ | TestFlight sur demande (tom.farge@outlook.fr) |

## Stack

| Couche | Tech |
|---|---|
| Framework | Flutter 3.44 / Dart 3.12 |
| State | Riverpod 2.x (StateNotifier, FutureProvider, AsyncNotifier) |
| Routing | GoRouter 14 (ShellRoute + auth/role guards) |
| DB | Isar 3.0.5 (offline-first) |
| Auth | Firebase Auth 5.x + fallback local Isar (SHA-256 + sel) |
| Models | Freezed + json_serializable |
| UI | Material 3, flutter_animate, gradient custom |
| Maps | flutter_map 7.x (OpenStreetMap) |
| QR | qr_flutter + mobile_scanner |
| i18n | FR + EN (ARB) |

## Architecture

Feature-First Clean Architecture.

```
lib/
├── main.dart                       → Bootstrap + Firebase + Isar seed
├── core/
│   ├── theme/                      → PulsarColors, PulsarTheme
│   ├── router/                     → GoRouter + transitions
│   ├── database/                   → Isar service, collections, seed
│   ├── providers/                  → Isar + repos
│   └── widgets/                    → AppShell, GradientButton, PulsarLogo
└── features/
    ├── home/                       → HomeScreen (hero, sections)
    ├── events/                     → Catalogue (16 events seedés)
    ├── tickets/                    → Billets + QR codes + lifecycle
    ├── cart/                       → Panier + checkout + paiement
    ├── profile/                    → Profile + édition
    ├── settings/                   → Préférences user persistées
    ├── auth/                       → Login / register / onboarding / splash
    ├── transport/                  → Comparateur transport bas carbone
    ├── accommodation/              → Hébergement
    ├── favorites/                  → Favoris user-scoped
    ├── eco/                        → Éco-score
    ├── notifications/              → In-app notifications
    ├── map/                        → Carte événements (OSM)
    └── admin/                      → Module admin RBAC complet
```

## Module admin (RBAC)

3 rôles : `owner` / `collaborator` / `user`.

| Section | owner | collaborator | user |
|---|---|---|---|
| Dashboard KPIs | ✅ | ✅ | — |
| Events CRUD | ✅ | ✅ (pas delete) | — |
| Users mgmt | ✅ | — | — |
| Orders + refund | ✅ | 👀 lecture | — |
| Codes promo | ✅ | ✅ (pas delete) | — |
| Settings globaux | ✅ | — | — |
| Notifications broadcasts | ✅ | ✅ | — |
| Audit log | ✅ | — | — |

Auto-promotion `owner` via whitelist d'emails (`lib/features/admin/domain/role.dart` → `kOwnerEmails`).

## Lancer en local

### Prérequis
- Flutter SDK 3.44
- Android Studio + SDK 35 + NDK 28.2.13676358 (pour APK Android)
- JDK 17 (pour Gradle 9)
- Xcode 15+ (pour iOS, Mac uniquement)
- Visual Studio 2022/26 + Desktop C++ workload (pour Windows)

### Boot
```bash
flutter clean
flutter pub get
dart run build_runner build -d
flutter run            # ou: flutter run -d windows / chrome / <android-device>
```

### Builds release
```bash
# Android APK
flutter build apk --release

# Android App Bundle (Play Store)
flutter build appbundle --release

# iOS IPA (Mac requis)
cd ios && pod install --repo-update && cd ..
flutter build ipa --release

# Windows EXE
flutter build windows --release
```

### Workarounds connus

**Windows build : CMake refuse firebase_cpp_sdk** — `set(CMAKE_POLICY_VERSION_MINIMUM "3.5" CACHE STRING "" FORCE)` déjà ajouté dans `windows/CMakeLists.txt`.

**Windows SSL : `unable to verify the first certificate`** — utiliser `$env:NODE_OPTIONS = "--use-system-ca"` avant `firebase deploy`.

**Android : `isar_flutter_libs` namespace manquant** — pub cache patché manuellement (voir DEPLOY.md). À refaire après chaque `flutter pub cache clean`.

## Firebase

Projet : `pulsar-7d45e` (https://console.firebase.google.com/project/pulsar-7d45e).

- Hosting : sert `landing/` (page marketing statique)
- Auth : Email/Password activé
- Storage / Firestore : pas encore utilisés (Isar local pour l'instant)

`google-services.json` et `GoogleService-Info.plist` sont commités côté client (clés publiques destinées au client) ; la vraie sécurité est côté règles Firebase + App Check côté console.

## Déployer

```powershell
flutter build windows --release
Compress-Archive -Path "build\windows\x64\runner\Release\*" -DestinationPath "landing\downloads\pulsar-windows.zip" -Force

flutter build apk --release
gh release upload v1.0.0 build/app/outputs/flutter-apk/app-release.apk --clobber

$env:NODE_OPTIONS = "--use-system-ca"
firebase deploy --only hosting
```

## Licence

Projet propriétaire — © 2026 Tom Farge / Team Neptune.
