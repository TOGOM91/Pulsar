import 'package:flutter/material.dart';
import '../theme/colors.dart';

/// Pulsar logo — the brand wordmark image (`assets/logo.png`).
///
/// The legacy `fontSize`/`showStar`/`color` parameters are kept so existing
/// call sites stay valid: `fontSize` now drives the logo height (the image is a
/// horizontal wordmark, so width is derived from its aspect ratio).
class PulsarLogo extends StatelessWidget {
  /// Drives the rendered height of the logo (≈ wordmark cap height).
  final double fontSize;

  /// Kept for API compatibility (the wordmark already includes the ✦ star).
  final bool showStar;

  /// Optional tint applied over the wordmark (rarely used).
  final Color? color;

  const PulsarLogo({
    super.key,
    this.fontSize = 24,
    this.showStar = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final image = Image.asset(
      'assets/logo.png',
      height: fontSize * 1.3,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.medium,
    );

    if (color != null) {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(color!, BlendMode.srcATop),
        child: image,
      );
    }
    return image;
  }
}

/// Pulsing star — used as a decorative element.
class PulsarStar extends StatefulWidget {
  final double size;
  final Color color;

  const PulsarStar({
    super.key,
    this.size = 80,
    this.color = PulsarColors.primary,
  });

  @override
  State<PulsarStar> createState() => _PulsarStarState();
}

class _PulsarStarState extends State<PulsarStar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (context, child) {
        final scale = 0.92 + (_ctrl.value * 0.16);
        final glow = 0.3 + (_ctrl.value * 0.4);
        return Transform.scale(
          scale: scale,
          child: Container(
            width: widget.size,
            height: widget.size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: widget.color.withValues(alpha: glow),
                  blurRadius: widget.size,
                  spreadRadius: widget.size * 0.15,
                ),
              ],
            ),
            child: Text(
              '✦',
              style: TextStyle(
                fontSize: widget.size * 0.95,
                color: widget.color,
                height: 1,
              ),
            ),
          ),
        );
      },
    );
  }
}
