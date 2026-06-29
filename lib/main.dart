import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/providers/theme_provider.dart';
import 'core/providers/locale_provider.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

import 'firebase_options.dart';

/// Pulsar — La mobilité événementielle réinventée.
///
/// Architecture: Feature-first Clean Architecture
/// State: Riverpod 2.x
/// Routing: GoRouter with ShellRoute + auth guard
/// Database: Cloud Firestore (Firebase) — offline-first via SDK cache
/// UI: Material 3, SpaceGrotesk, flutter_animate
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  bool firebaseReady = false;
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseReady = true;
  } catch (e, st) {
    if (kDebugMode) {
      debugPrint('⚠️  Firebase indisponible : $e');
      debugPrintStack(stackTrace: st);
    }
  }

  if (firebaseReady) {
    // Enable offline persistence on native platforms so the app works without
    // network after the first sync.
    //
    // We deliberately DON'T touch persistence on Flutter web:
    //  - `cacheSizeBytes` is marshalled as an Int64 → "Int64 accessor not
    //    supported by dart2js" on the first Firestore operation;
    //  - enabling IndexedDB persistence fails in private/incognito windows
    //    → "Unable to establish connection on channel".
    // Web therefore runs against the live backend (online), which is fine.
    if (!kIsWeb) {
      try {
        FirebaseFirestore.instance.settings = const Settings(
          persistenceEnabled: true,
          cacheSizeBytes: 100 * 1024 * 1024, // 100 MB
        );
      } catch (e) {
        if (kDebugMode) debugPrint('⚠️  Firestore settings : $e');
      }
    }

  }

  runApp(
    ProviderScope(
      overrides: [
        firebaseReadyProvider.overrideWithValue(firebaseReady),
      ],
      child: const PulsarApp(),
    ),
  );
}

class PulsarApp extends ConsumerWidget {
  const PulsarApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Pulsar',
      debugShowCheckedModeBanner: false,

      theme: PulsarTheme.light,
      darkTheme: PulsarTheme.dark,
      themeMode: themeMode,

      routerConfig: router,

      locale: locale,
      supportedLocales: const [
        Locale('fr'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
