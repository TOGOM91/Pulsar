import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/database/app_database.dart';
import 'core/database/seed_data.dart';
import 'core/providers/core_providers.dart';
import 'core/providers/theme_provider.dart';
import 'core/providers/locale_provider.dart';
import 'features/auth/presentation/providers/auth_provider.dart';

import 'firebase_options.dart';

/// Pulsar — La mobilité événementielle réinventée.
///
/// Architecture: Feature-first Clean Architecture
/// State: Riverpod 2.x
/// Routing: GoRouter with ShellRoute + auth guard
/// Database: Isar (offline-first)
/// UI: Material 3, DM Sans, flutter_animate
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

  // Firebase initialization — never fatal.
  // If the platform has no config (e.g. Linux) or initialisation fails,
  // the app still boots in local-only mode (Isar).
  bool firebaseReady = false;
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseReady = true;
  } catch (e, st) {
    firebaseReady = false;
    if (kDebugMode) {
      debugPrint('⚠️  Firebase indisponible — mode local activé: $e');
      debugPrintStack(stackTrace: st);
    }
  }

  final db = AppDatabase();
  await SeedData.seedIfEmpty(db);

  runApp(
    ProviderScope(
      overrides: [
        firebaseReadyProvider.overrideWithValue(firebaseReady),
        appDatabaseProvider.overrideWithValue(db),
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