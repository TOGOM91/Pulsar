import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/pulsar_logo.dart';
import '../providers/auth_provider.dart';

/// Splash screen with animated logo.
/// After ~1.6s, navigates based on auth state.
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(milliseconds: 1700));
    if (!mounted) return;
    final auth = ref.read(authProvider);
    auth.when(
      data: (state) {
        if (state is AuthAuthenticated) {
          context.go(state.profile.isOnboarded ? '/' : '/onboarding');
        } else {
          context.go('/welcome');
        }
      },
      loading: () {
        Future.delayed(const Duration(milliseconds: 500), _navigateAfterDelay);
      },
      error: (_, __) => context.go('/welcome'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PulsarColors.backgroundDark,
      body: Stack(
        children: [
          // Background gradient orbs
          Positioned(
            top: -100,
            left: -50,
            child: Container(
              width: 280,
              height: 280,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0x4400D9CC),
                    Color(0x0000D9CC),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -50,
            child: Container(
              width: 320,
              height: 320,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Color(0x44D96AE8),
                    Color(0x00D96AE8),
                  ],
                ),
              ),
            ),
          ),
          // Logo + tagline
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const PulsarStar(size: 100, color: PulsarColors.primary)
                    .animate()
                    .fadeIn(duration: 700.ms)
                    .scale(
                      begin: const Offset(0.5, 0.5),
                      end: const Offset(1, 1),
                      duration: 700.ms,
                      curve: Curves.elasticOut,
                    ),
                const SizedBox(height: 24),
                const PulsarLogo(fontSize: 42, showStar: false)
                    .animate()
                    .fadeIn(delay: 400.ms, duration: 600.ms)
                    .slideY(begin: 0.3, end: 0, curve: Curves.easeOutCubic),
                const SizedBox(height: 12),
                Text(
                  'VIS TES ÉVÉNEMENTS À FOND',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.6),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 4,
                  ),
                )
                    .animate()
                    .fadeIn(delay: 700.ms, duration: 600.ms),
              ],
            ),
          ),
          // Bottom loader
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(
                    Colors.white.withValues(alpha: 0.5),
                  ),
                ),
              )
                  .animate()
                  .fadeIn(delay: 1000.ms, duration: 400.ms),
            ),
          ),
        ],
      ),
    );
  }
}
