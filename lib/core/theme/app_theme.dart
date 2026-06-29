import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

/// Pulsar theming — Material 3 with Bebas Neue display + DM Sans body.
class PulsarTheme {
  PulsarTheme._();

  /// Display style — bold condensed, big and impactful (Bebas Neue).
  static TextStyle display(double size,
      {Color? color, double letterSpacing = -0.5}) {
    return GoogleFonts.bebasNeue(
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: color,
      letterSpacing: letterSpacing,
      height: 1.0,
    );
  }

  /// Body style (DM Sans).
  static TextStyle body(double size,
      {FontWeight weight = FontWeight.w400, Color? color, double? height}) {
    return GoogleFonts.dmSans(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height ?? 1.5,
    );
  }

  static TextTheme _textTheme(Color primary, Color secondary) {
    return TextTheme(
      // Display (Bebas Neue — for hero/section titles)
      displayLarge:
          display(56, color: primary).copyWith(letterSpacing: 0),
      displayMedium: display(42, color: primary),
      displaySmall: display(32, color: primary),

      // Headlines (DM Sans bold)
      headlineLarge:
          body(28, weight: FontWeight.w800, color: primary, height: 1.15),
      headlineMedium:
          body(22, weight: FontWeight.w700, color: primary, height: 1.2),
      headlineSmall:
          body(18, weight: FontWeight.w700, color: primary, height: 1.25),

      // Titles
      titleLarge: body(16, weight: FontWeight.w600, color: primary),
      titleMedium: body(14, weight: FontWeight.w600, color: primary),
      titleSmall: body(12, weight: FontWeight.w600, color: secondary),

      // Body
      bodyLarge: body(16, color: primary),
      bodyMedium: body(14, color: secondary),
      bodySmall: body(12, color: secondary),

      // Labels
      labelLarge: body(14, weight: FontWeight.w700, color: primary),
      labelMedium: body(12, weight: FontWeight.w600, color: primary),
      labelSmall: body(11, weight: FontWeight.w500, color: secondary)
          .copyWith(letterSpacing: 0.5),
    );
  }

  // ── Light theme ──
  static ThemeData get light {
    final colorScheme = ColorScheme.light(
      primary: PulsarColors.primary,
      onPrimary: Colors.white,
      primaryContainer: PulsarColors.primarySoft,
      secondary: PulsarColors.secondary,
      onSecondary: Colors.white,
      secondaryContainer: PulsarColors.secondarySoft,
      tertiary: PulsarColors.accent,
      tertiaryContainer: PulsarColors.accentSoft,
      error: PulsarColors.error,
      surface: PulsarColors.surfaceLight,
      onSurface: PulsarColors.textPrimaryLight,
      onSurfaceVariant: PulsarColors.textSecondaryLight,
      outline: PulsarColors.textTertiaryLight.withValues(alpha: 0.25),
      outlineVariant: PulsarColors.textTertiaryLight.withValues(alpha: 0.12),
    );

    return _buildTheme(
      colorScheme: colorScheme,
      background: PulsarColors.backgroundLight,
      surface: PulsarColors.surfaceLight,
      card: PulsarColors.cardLight,
      textPrimary: PulsarColors.textPrimaryLight,
      textSecondary: PulsarColors.textSecondaryLight,
      textTertiary: PulsarColors.textTertiaryLight,
      primary: PulsarColors.primary,
      onPrimary: Colors.white,
      isDark: false,
    );
  }

  // ── Dark theme ──
  static ThemeData get dark {
    final colorScheme = ColorScheme.dark(
      primary: PulsarColors.primaryLight,
      onPrimary: PulsarColors.backgroundDark,
      primaryContainer: PulsarColors.primary.withValues(alpha: 0.25),
      secondary: PulsarColors.secondaryLight,
      onSecondary: PulsarColors.backgroundDark,
      secondaryContainer: PulsarColors.secondary.withValues(alpha: 0.2),
      tertiary: PulsarColors.accentLight,
      tertiaryContainer: PulsarColors.accent.withValues(alpha: 0.2),
      error: PulsarColors.error,
      surface: PulsarColors.surfaceDark,
      onSurface: PulsarColors.textPrimaryDark,
      onSurfaceVariant: PulsarColors.textSecondaryDark,
      outline: PulsarColors.textTertiaryDark.withValues(alpha: 0.3),
      outlineVariant: PulsarColors.textTertiaryDark.withValues(alpha: 0.15),
    );

    return _buildTheme(
      colorScheme: colorScheme,
      background: PulsarColors.backgroundDark,
      surface: PulsarColors.surfaceDark,
      card: PulsarColors.cardDark,
      textPrimary: PulsarColors.textPrimaryDark,
      textSecondary: PulsarColors.textSecondaryDark,
      textTertiary: PulsarColors.textTertiaryDark,
      primary: PulsarColors.primaryLight,
      onPrimary: PulsarColors.backgroundDark,
      isDark: true,
    );
  }

  static ThemeData _buildTheme({
    required ColorScheme colorScheme,
    required Color background,
    required Color surface,
    required Color card,
    required Color textPrimary,
    required Color textSecondary,
    required Color textTertiary,
    required Color primary,
    required Color onPrimary,
    required bool isDark,
  }) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: background,
      textTheme: _textTheme(textPrimary, textSecondary),
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        titleTextStyle:
            body(18, weight: FontWeight.w700, color: textPrimary),
        centerTitle: false,
      ),
      cardTheme: CardThemeData(
        color: card,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: card,
        selectedColor: primary.withValues(alpha: 0.12),
        labelStyle: body(13, weight: FontWeight.w500),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusFull)),
        side: BorderSide(color: textTertiary.withValues(alpha: 0.2)),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(PulsarTokens.radiusMd)),
          textStyle: body(15, weight: FontWeight.w700),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(PulsarTokens.radiusMd)),
          side: BorderSide(color: primary, width: 1.5),
          textStyle: body(15, weight: FontWeight.w700),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primary,
          textStyle: body(14, weight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: card,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          borderSide: BorderSide(color: textTertiary.withValues(alpha: 0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          borderSide: BorderSide(color: primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
          borderSide: const BorderSide(color: PulsarColors.error),
        ),
        labelStyle: body(14, color: textSecondary),
        hintStyle: body(14, color: textTertiary),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: card,
        selectedItemColor: primary,
        unselectedItemColor: textTertiary,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      dividerTheme: DividerThemeData(
        color: textTertiary.withValues(alpha: 0.15),
        thickness: 1,
        space: 1,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: isDark ? PulsarColors.elevatedDark : Colors.black87,
        contentTextStyle: body(14, color: Colors.white),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusMd)),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: card,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl)),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: card,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(PulsarTokens.radiusXl)),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: PulsarColors.primary,
      ),
    );
  }
}
