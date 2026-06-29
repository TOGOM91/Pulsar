import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/pulsar_logo.dart';

/// Welcome / onboarding screen — dramatic dark hero with gradient orbs.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PulsarColors.backgroundDark,
      body: Stack(
        children: [
          // ── Background orbs ──
          Positioned(
            top: -120,
            right: -80,
            child: Container(
              width: 360,
              height: 360,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x6600D9CC), Color(0x0000D9CC)],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -180,
            left: -100,
            child: Container(
              width: 480,
              height: 480,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x55D96AE8), Color(0x00D96AE8)],
                ),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),

                  // ── Logo ──
                  const PulsarLogo(fontSize: 24)
                      .animate()
                      .fadeIn(duration: 500.ms)
                      .slideY(begin: -0.3),

                  const Spacer(),

                  // ── Hero text — Bebas Neue HUGE ──
                  Text(
                    'VIS TES\nÉVÉNEMENTS\nÀ FOND.',
                    style: PulsarTheme.display(
                      72,
                      color: Colors.white,
                      letterSpacing: -2,
                    ).copyWith(height: 0.95),
                  )
                      .animate()
                      .fadeIn(delay: 200.ms, duration: 700.ms)
                      .slideX(begin: -0.05),

                  const SizedBox(height: 24),

                  const Text(
                    'Billet, transport, logement —\ntout en une app.',
                    style: TextStyle(
                      fontSize: 17,
                      color: PulsarColors.textSecondaryDark,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                      .animate()
                      .fadeIn(delay: 500.ms, duration: 600.ms)
                      .slideX(begin: -0.05),

                  const SizedBox(height: 32),

                  // ── Feature pills (premium row) ──
                  const Wrap(
                    spacing: 8,
                    runSpacing: 10,
                    children: [
                      _FeaturePill(emoji: '🎟️', label: 'Billetterie'),
                      _FeaturePill(emoji: '🚆', label: 'Bas carbone'),
                      _FeaturePill(emoji: '🏨', label: 'Logement'),
                      _FeaturePill(emoji: '🌱', label: 'Éco-score'),
                    ],
                  ).animate().fadeIn(delay: 700.ms, duration: 600.ms),

                  const SizedBox(height: 40),

                  // ── CTAs ──
                  GradientButton(
                    text: "C'est parti !",
                    icon: Icons.arrow_forward_rounded,
                    isFullWidth: true,
                    onPressed: () => context.push('/register'),
                  )
                      .animate()
                      .fadeIn(delay: 900.ms, duration: 500.ms)
                      .slideY(begin: 0.3),

                  const SizedBox(height: 14),

                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => context.push('/login'),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: const Text(
                        'Déjà un compte ? Se connecter',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                      .animate()
                      .fadeIn(delay: 1000.ms, duration: 500.ms),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeaturePill extends StatelessWidget {
  final String emoji;
  final String label;

  const _FeaturePill({required this.emoji, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(PulsarTokens.radiusFull),
        border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 14)),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
