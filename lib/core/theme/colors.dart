import 'package:flutter/material.dart';

/// Pulsar brand color palette.
/// Cyan #00D9CC, Yellow #F5C542, Purple #D96AE8
class PulsarColors {
  PulsarColors._();

  // ── Primary brand (cyan) ──
  static const Color primary = Color(0xFF00D9CC);
  static const Color primaryLight = Color(0xFF5EEDEA);
  static const Color primaryDark = Color(0xFF009E95);
  static const Color primarySoft = Color(0xFFCCFAF7);

  // ── Secondary (warm yellow) ──
  static const Color secondary = Color(0xFFF5C542);
  static const Color secondaryLight = Color(0xFFFFDC7A);
  static const Color secondaryDark = Color(0xFFD4A010);
  static const Color secondarySoft = Color(0xFFFFF5D6);

  // ── Accent (purple) ──
  static const Color accent = Color(0xFFD96AE8);
  static const Color accentLight = Color(0xFFE99AF4);
  static const Color accentDark = Color(0xFFAA3FBB);
  static const Color accentSoft = Color(0xFFF7E2FB);

  // ── Eco ──
  static const Color ecoGreen = Color(0xFF22C55E);
  static const Color ecoTeal = Color(0xFF14B8A6);
  static const Color ecoSoft = Color(0xFFD1FAE5);

  // ── Semantic ──
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF97316);
  static const Color success = Color(0xFF22C55E);
  static const Color info = Color(0xFF3B82F6);

  // ── Surfaces (Light) — warmer off-white ──
  static const Color surfaceLight = Color(0xFFF7F5F3);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFF2F0EF);
  static const Color elevatedLight = Color(0xFFFFFFFF);

  // ── Surfaces (Dark) — true blacks with depth ──
  static const Color surfaceDark = Color(0xFF1C1C1E);
  static const Color cardDark = Color(0xFF2A2A2D);
  static const Color backgroundDark = Color(0xFF121214);
  static const Color elevatedDark = Color(0xFF353538);

  // ── Text ──
  static const Color textPrimaryLight = Color(0xFF0F0F12);
  static const Color textSecondaryLight = Color(0xFF55555C);
  static const Color textTertiaryLight = Color(0xFF94949C);

  static const Color textPrimaryDark = Color(0xFFF7F5F3);
  static const Color textSecondaryDark = Color(0xFFB0AEB3);
  static const Color textTertiaryDark = Color(0xFF6B6A70);

  // ── Gradients ──
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF00D9CC), Color(0xFF5EEDEA)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// The signature Pulsar gradient — cyan to purple (used on logo, hero, CTAs).
  static const LinearGradient heroGradient = LinearGradient(
    colors: [Color(0xFF00D9CC), Color(0xFFD96AE8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Warmer hero variant — cyan to yellow.
  static const LinearGradient sunGradient = LinearGradient(
    colors: [Color(0xFF00D9CC), Color(0xFFF5C542)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient ecoGradient = LinearGradient(
    colors: [Color(0xFF22C55E), Color(0xFF14B8A6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [Color(0xFFD96AE8), Color(0xFFF5C542)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient warmGradient = LinearGradient(
    colors: [Color(0xFFF5C542), Color(0xFFD96AE8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Dark gradient for splash / hero backgrounds.
  static const LinearGradient nightGradient = LinearGradient(
    colors: [Color(0xFF0A0A0F), Color(0xFF1C1C2E)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Used for elevated surfaces over dark backgrounds.
  static List<BoxShadow> shadowSm(bool isDark) => [
        BoxShadow(
          color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.04),
          blurRadius: 8,
          offset: const Offset(0, 2),
        ),
      ];

  static List<BoxShadow> shadowMd(bool isDark) => [
        BoxShadow(
          color: Colors.black.withValues(alpha: isDark ? 0.35 : 0.06),
          blurRadius: 16,
          offset: const Offset(0, 4),
        ),
      ];

  static List<BoxShadow> shadowLg(bool isDark) => [
        BoxShadow(
          color: Colors.black.withValues(alpha: isDark ? 0.4 : 0.1),
          blurRadius: 32,
          offset: const Offset(0, 12),
        ),
      ];

  /// Colored shadow used for floating CTAs and primary actions.
  static List<BoxShadow> glowPrimary({double alpha = 0.4}) => [
        BoxShadow(
          color: primary.withValues(alpha: alpha),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];

  static List<BoxShadow> glowAccent({double alpha = 0.4}) => [
        BoxShadow(
          color: accent.withValues(alpha: alpha),
          blurRadius: 24,
          offset: const Offset(0, 8),
        ),
      ];
}

/// Design tokens — spacing, radius, durations.
class PulsarTokens {
  PulsarTokens._();

  // Spacing — 4px base grid
  static const double space1 = 4;
  static const double space2 = 8;
  static const double space3 = 12;
  static const double space4 = 16;
  static const double space5 = 20;
  static const double space6 = 24;
  static const double space7 = 32;
  static const double space8 = 40;
  static const double space9 = 56;

  // Radius
  static const double radiusSm = 8;
  static const double radiusMd = 14;
  static const double radiusLg = 20;
  static const double radiusXl = 28;
  static const double radius2Xl = 36;
  static const double radiusFull = 999;

  // Animation durations
  static const Duration durFast = Duration(milliseconds: 200);
  static const Duration durMid = Duration(milliseconds: 350);
  static const Duration durSlow = Duration(milliseconds: 600);

  // Easing
  static const Curve easeOut = Curves.easeOutCubic;
  static const Curve easeInOut = Curves.easeInOutCubic;
  static const Curve bounce = Curves.elasticOut;
}
