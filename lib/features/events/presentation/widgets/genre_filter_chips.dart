import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/theme/colors.dart';
import '../providers/event_providers.dart';

/// Genre filter chips row matching the original web design.
class GenreFilterChips extends ConsumerWidget {
  const GenreFilterChips({super.key});

  static const _genres = [
    _Genre('all', '🎵', 'Tous'),
    _Genre('rock', '🎸', 'Rock'),
    _Genre('electro', '🎧', 'Électro'),
    _Genre('spectacles', '🎭', 'Spectacles'),
    _Genre('culturel', '📚', 'Culturel'),
    _Genre('gaming', '🎮', 'Gaming'),
    _Genre('sport', '🏀', 'Sport'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedGenreProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _genres.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final genre = _genres[index];
          final isActive = selected == genre.id;

          return GestureDetector(
            onTap: () {
              ref.read(selectedGenreProvider.notifier).state = genre.id;
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOutCubic,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                gradient: isActive ? PulsarColors.primaryGradient : null,
                color: isActive
                    ? null
                    : (isDark
                        ? PulsarColors.surfaceDark
                        : PulsarColors.surfaceLight),
                borderRadius: BorderRadius.circular(50),
                border: isActive
                    ? null
                    : Border.all(
                        color: (isDark
                                ? PulsarColors.textTertiaryDark
                                : PulsarColors.textTertiaryLight)
                            .withValues(alpha: 0.2),
                      ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(genre.emoji, style: const TextStyle(fontSize: 14)),
                  const SizedBox(width: 6),
                  Text(
                    genre.label,
                    style: TextStyle(
                      color: isActive
                          ? Colors.white
                          : theme.colorScheme.onSurface,
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          )
              .animate(target: isActive ? 1 : 0)
              .scaleXY(begin: 1, end: 1.02, duration: 200.ms);
        },
      ),
    );
  }
}

class _Genre {
  final String id;
  final String emoji;
  final String label;

  const _Genre(this.id, this.emoji, this.label);
}
