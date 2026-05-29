# Firebase setup (optional)

L'app fonctionne en **auth local** par défaut. Pour activer l'auth Firebase
(comptes cloud, reset password par email, etc.) :

## 1. Prérequis
- Node.js installé (https://nodejs.org)
- Compte Google

## 2. Installer les CLIs
```powershell
npm install -g firebase-tools
dart pub global activate flutterfire_cli
```

## 3. Login Firebase
```powershell
firebase login
```
Ouvre ton navigateur, valide.

## 4. Créer le projet Firebase
Va sur https://console.firebase.google.com → **Add project** → suis les étapes.

Une fois créé :
- Dans le menu de gauche : **Authentication** → **Get started**
- Onglet **Sign-in method** → active **Email/Password**

## 5. Configurer le projet Flutter
À la racine de `flowee_app` :
```powershell
flutterfire configure
```
Sélectionne ton projet, choisis les plateformes (`windows` pour ton cas).
La commande génère `lib/firebase_options.dart` automatiquement.

## 6. Activer Firebase dans le code
Ouvre `lib/main.dart` :

**Remplace :**
```dart
// import 'firebase_options.dart';
```
**par :**
```dart
import 'firebase_options.dart';
```

**Et remplace :**
```dart
await Firebase.initializeApp();
```
**par :**
```dart
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
```

## 7. Relance
```powershell
flutter build windows --debug
```

Tu verras dans la console au démarrage : pas de `⚠️ Firebase not configured`
= c'est bon. L'app utilise maintenant Firebase Auth pour register/login.

Les anciens comptes locaux restent dans Isar mais ne sont plus utilisés.
Les nouveaux comptes vont sur Firebase.

## Désactiver Firebase (revenir au local)
Recommente l'import + change `Firebase.initializeApp(options:...)` en
`Firebase.initializeApp()`. L'init va échouer, fallback local automatique.
