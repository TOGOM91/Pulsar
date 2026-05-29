import 'package:flutter/material.dart';
import '../theme/colors.dart';

/// Animated Pulsar logo with the signature ✦ star.
class PulsarLogo extends StatelessWidget {
  final double fontSize;
  final bool showStar;
  final Color? color;

  const PulsarLogo({
    super.key,
    this.fontSize = 24,
    this.showStar = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final base = color;
    Widget text = Text(
      showStar ? '✦ PULSAR' : 'PULSAR',
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w900,
        letterSpacing: fontSize > 30 ? 4 : 2,
        color: base ?? Colors.white,
        height: 1,
      ),
    );

    if (base == null) {
      text = ShaderMask(
        shaderCallback: (b) => PulsarColors.heroGradient.createShader(b),
        child: Text(
          showStar ? '✦ PULSAR' : 'PULSAR',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
            letterSpacing: fontSize > 30 ? 4 : 2,
            color: Colors.white,
            height: 1,
          ),
        ),
      );
    }

    return text;
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
