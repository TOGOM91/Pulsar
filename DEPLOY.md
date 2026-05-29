# Pulsar — guide de déploiement multi-plateforme

L'app cible **Windows**, **Android** (6.0+) et **iOS** (15+).
Firebase Auth est intégré, avec fallback automatique en mode local Isar si
Firebase n'est pas joignable (sans crash).

---

## 0. Prérequis par plateforme

| Plateforme | Outil indispensable                                            |
|------------|----------------------------------------------------------------|
| Windows    | Visual Studio 2022/26 + Desktop C++ workload                   |
| Android    | Android Studio + SDK 35 + NDK 27.0.12077973 + JDK 17           |
| iOS        | Un **Mac** avec Xcode 15+ et CocoaPods (`sudo gem install cocoapods`) |

Sur Windows : `flutter doctor` doit être tout vert sauf iOS (normal).
Sur Mac : `flutter doctor` doit être tout vert sauf Windows (normal).

---

## 1. Préparation commune (à faire une fois après pull)

```powershell
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

---

## 2. Build Android (.apk + .aab)

### APK debug (test rapide)
```powershell
flutter build apk --debug
```
Sortie : `build\app\outputs\flutter-apk\app-debug.apk`

### APK release (à distribuer en sideload)
```powershell
flutter build apk --release
```
Sortie : `build\app\outputs\flutter-apk\app-release.apk` (~30-40 MB).

Pour publier sur Pulsar landing :
```powershell
Copy-Item build\app\outputs\flutter-apk\app-release.apk `
  landing\downloads\pulsar-android.apk
```

### AAB pour Google Play
```powershell
flutter build appbundle --release
```
Sortie : `build\app\outputs\bundle\release\app-release.aab`.

> ℹ️  Le release utilise actuellement la clé de debug (fallback). Pour
> signer en prod, crée `android/key.properties` :
> ```
> storeFile=../keystore/pulsar.jks
> storePassword=...
> keyAlias=pulsar
> keyPassword=...
> ```
> Le `build.gradle.kts` détecte le fichier automatiquement.

---

## 3. Build iOS (Mac requis)

```bash
cd ios && pod install --repo-update && cd ..
flutter build ios --release
# ou pour TestFlight :
flutter build ipa --release
```
Sortie : `build/ios/ipa/Pulsar.ipa`.

Upload sur App Store Connect via **Transporter** (Mac App Store) ou Xcode
Organizer. Bundle ID : `com.example.floweeApp` (modifiable dans Xcode).

> ⚠️  Première fois : ouvre `ios/Runner.xcworkspace` dans Xcode, sélectionne
> la cible Runner → **Signing & Capabilities** → coche *Automatically manage
> signing* et choisis ton Team Apple Developer.

---

## 4. Build Windows

```powershell
flutter build windows --release
```
Sortie : `build\windows\x64\runner\Release\` (~80 MB).

Pour publier sur landing :
```powershell
Compress-Archive -Path "build\windows\x64\runner\Release\*" `
  -DestinationPath "landing\downloads\pulsar-windows.zip" -Force
```

---

## 5. Déploiement Firebase Hosting (landing publique)

La landing page sert d'index pour les téléchargements.

```powershell
firebase login --reauth
firebase deploy --only hosting
```

URL : **https://pulsar-7d45e.web.app** (alias : `pulsar-7d45e.firebaseapp.com`).

La landing inclut désormais 3 boutons :
- Windows (zip)
- Android (apk)
- iOS (mailto TestFlight)

---

## 6. Comportement Firebase à l'exécution

`main.dart` initialise Firebase dans un `try/catch` :
- **Succès** → `firebaseReadyProvider = true` → `AuthService` cloud
  (création/login compte par email + reset password)
- **Échec** (réseau, lib manquante, plateforme non config) →
  `firebaseReadyProvider = false` → repli sur l'`AuthService` Isar local
  (hash SHA-256 + sel, multi-comptes, pas de reset email)

Aucun crash possible au démarrage : l'app tourne toujours, même offline.

---

## 7. Console Firebase — à activer une fois

https://console.firebase.google.com/project/pulsar-7d45e

1. **Authentication → Sign-in method** → activer *Email/Password*
2. **Hosting** → activer le site `pulsar-7d45e`
3. (Optionnel) **Crashlytics** → activer sur Android (lecture du `google-services.json` déjà en place)

---

## 8. Identifiants de bundle

| Plateforme | Identifier                       |
|------------|----------------------------------|
| Android    | `com.example.flowee_app`         |
| iOS / macOS| `com.example.floweeApp`          |
| Windows    | `flowee_app` (exe name)          |

Ces ids sont synchronisés dans `lib/firebase_options.dart`,
`android/app/google-services.json` et `ios/Runner/GoogleService-Info.plist`.
Si tu veux les changer, mets aussi à jour la console Firebase puis
relance `flutterfire configure`.
