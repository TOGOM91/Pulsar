import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/pulsar_logo.dart';
import '../providers/auth_provider.dart';

/// Onboarding after registration — collect genres, location, budget.
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _locationCtrl = TextEditingController(text: 'Paris');
  final Set<String> _selectedGenres = {};
  double _budget = 300;
  bool _ecoMode = true;
  bool _saving = false;

  static const _allGenres = [
    ('rock', '🎸', 'Rock'),
    ('electro', '🎧', 'Électro'),
    ('pop', '🎤', 'Pop'),
    ('metal', '🤘', 'Metal'),
    ('hiphop', '🎙️', 'Hip-Hop'),
    ('jazz', '🎷', 'Jazz'),
    ('classique', '🎻', 'Classique'),
    ('spectacles', '🎭', 'Spectacles'),
    ('culturel', '📚', 'Culturel'),
    ('gaming', '🎮', 'Gaming'),
    ('sport', '🏀', 'Sport'),
    ('festival', '🎪', 'Festival'),
  ];

  @override
  void dispose() {
    _locationCtrl.dispose();
    super.dispose();
  }

  Future<void> _finish() async {
    if (_selectedGenres.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sélectionne au moins un genre 🎶'),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    setState(() => _saving = true);
    await ref.read(authProvider.notifier).updateProfile(
          genres: _selectedGenres.toList(),
          locationName: _locationCtrl.text.trim().isEmpty
              ? 'Paris'
              : _locationCtrl.text.trim(),
          budgetMax: _budget,
          ecoMode: _ecoMode,
          isOnboarded: true,
        );
    if (mounted) context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Row(
                children: [
                  const PulsarLogo(fontSize: 16),
                  const Spacer(),
                  TextButton(
                    onPressed: _saving ? null : _finish,
                    child: const Text('Passer'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personnalisons\nton expérience',
                      style: theme.textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        height: 1.1,
                      ),
                    ).animate().fadeIn(duration: 400.ms).slideY(begin: -0.05),
                    const SizedBox(height: 8),
                    Text(
                      'Ces préférences nous aident à te suggérer les meilleurs événements.',
                      style: theme.textTheme.bodyMedium,
                    ).animate().fadeIn(delay: 100.ms, duration: 400.ms),

                    const SizedBox(height: 32),

                    // ── Genres ──
                    _Section(
                      icon: '🎵',
                      title: 'Tes genres préférés',
                      subtitle: 'Sélectionne tout ce qui te parle',
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: _allGenres.map((g) {
                          final selected = _selectedGenres.contains(g.$1);
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selected) {
                                  _selectedGenres.remove(g.$1);
                                } else {
                                  _selectedGenres.add(g.$1);
                                }
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                gradient: selected
                                    ? PulsarColors.primaryGradient
                                    : null,
                                color: selected
                                    ? null
                                    : theme.cardTheme.color,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: selected
                                      ? Colors.transparent
                                      : theme.colorScheme.outline,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(g.$2,
                                      style: const TextStyle(fontSize: 16)),
                                  const SizedBox(width: 6),
                                  Text(
                                    g.$3,
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.white
                                          : theme.colorScheme.onSurface,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ).animate().fadeIn(delay: 200.ms, duration: 400.ms),

                    const SizedBox(height: 24),

                    // ── Location ──
                    _Section(
                      icon: '📍',
                      title: 'Ta ville',
                      subtitle: 'Pour optimiser les trajets et suggestions',
                      child: TextField(
                        controller: _locationCtrl,
                        decoration: const InputDecoration(
                          hintText: 'Paris, Lyon, Marseille...',
                          prefixIcon: Icon(Icons.location_on_outlined),
                        ),
                      ),
                    ).animate().fadeIn(delay: 300.ms, duration: 400.ms),

                    const SizedBox(height: 24),

                    // ── Budget ──
                    _Section(
                      icon: '💰',
                      title: 'Budget maximum par événement',
                      subtitle: '${_budget.round()}€',
                      child: Slider(
                        value: _budget,
                        min: 50,
                        max: 1000,
                        divisions: 19,
                        label: '${_budget.round()}€',
                        activeColor: PulsarColors.primary,
                        onChanged: (v) => setState(() => _budget = v),
                      ),
                    ).animate().fadeIn(delay: 400.ms, duration: 400.ms),

                    const SizedBox(height: 24),

                    // ── Eco mode ──
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: PulsarColors.ecoGreen.withValues(alpha: 0.08),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: PulsarColors.ecoGreen.withValues(alpha: 0.25),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Text('🌱', style: TextStyle(fontSize: 28)),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mode éco',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: PulsarColors.ecoGreen,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Prioriser les trajets bas carbone',
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          Switch.adaptive(
                            value: _ecoMode,
                            onChanged: (v) => setState(() => _ecoMode = v),
                            activeThumbColor: PulsarColors.ecoGreen,
                          ),
                        ],
                      ),
                    ).animate().fadeIn(delay: 500.ms, duration: 400.ms),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
              child: _saving
                  ? const Center(child: CircularProgressIndicator())
                  : GradientButton(
                      text: 'Commencer',
                      icon: Icons.rocket_launch_rounded,
                      isFullWidth: true,
                      onPressed: _finish,
                    ).animate().fadeIn(delay: 600.ms),
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Widget child;

  const _Section({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(icon, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 8),
            Text(title, style: theme.textTheme.titleLarge),
          ],
        ),
        const SizedBox(height: 4),
        Text(subtitle, style: theme.textTheme.bodySmall),
        const SizedBox(height: 14),
        child,
      ],
    );
  }
}
