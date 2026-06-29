import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Manages the app locale (fr / en).
class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('fr'));

  void setLocale(Locale locale) => state = locale;

  void toggleLocale() {
    state = state.languageCode == 'fr'
        ? const Locale('en')
        : const Locale('fr');
  }
}

final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});
