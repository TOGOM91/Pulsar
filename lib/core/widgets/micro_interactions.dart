import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../theme/colors.dart';

/// Animated heart toggle with explosion of particles when activated.
class AnimatedHeartButton extends StatefulWidget {
  final bool isFavorite;
  final VoidCallback onTap;
  final double size;
  final Color? inactiveColor;
  final Color activeColor;

  const AnimatedHeartButton({
    super.key,
    required this.isFavorite,
    required this.onTap,
    this.size = 22,
    this.inactiveColor,
    this.activeColor = PulsarColors.error,
  });

  @override
  State<AnimatedHeartButton> createState() => _AnimatedHeartButtonState();
}

class _AnimatedHeartButtonState extends State<AnimatedHeartButton>
    with TickerProviderStateMixin {
  late final AnimationController _scaleCtrl;
  late final AnimationController _burstCtrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _burstCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _scale = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.6)
              .chain(CurveTween(curve: Curves.easeOut)),
          weight: 30),
      TweenSequenceItem(
          tween: Tween(begin: 0.6, end: 1.35)
              .chain(CurveTween(curve: Curves.elasticOut)),
          weight: 70),
    ]).animate(_scaleCtrl);
  }

  @override
  void dispose() {
    _scaleCtrl.dispose();
    _burstCtrl.dispose();
    super.dispose();
  }

  void _handleTap() {
    widget.onTap();
    if (!widget.isFavorite) {
      _scaleCtrl.forward(from: 0);
      _burstCtrl.forward(from: 0);
    } else {
      _scaleCtrl.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final newlyActive = widget.isFavorite;
    return GestureDetector(
      onTap: _handleTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: widget.size + 20,
        height: widget.size + 20,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Burst particles
            AnimatedBuilder(
              animation: _burstCtrl,
              builder: (_, __) {
                if (_burstCtrl.value == 0) return const SizedBox.shrink();
                return CustomPaint(
                  size: Size(widget.size * 2.6, widget.size * 2.6),
                  painter: _BurstPainter(
                    progress: _burstCtrl.value,
                    color: widget.activeColor,
                  ),
                );
              },
            ),
            // Heart icon
            AnimatedBuilder(
              animation: _scale,
              builder: (_, __) {
                return Transform.scale(
                  scale: _scaleCtrl.isAnimating ? _scale.value : 1.0,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (c, anim) => ScaleTransition(
                      scale: anim,
                      child: c,
                    ),
                    child: Icon(
                      newlyActive
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_rounded,
                      key: ValueKey(newlyActive),
                      color: newlyActive
                          ? widget.activeColor
                          : (widget.inactiveColor ?? Colors.white),
                      size: widget.size,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _BurstPainter extends CustomPainter {
  final double progress;
  final Color color;
  final int particles = 8;

  _BurstPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final maxR = size.width * 0.45;
    final r = maxR * Curves.easeOutCubic.transform(progress);
    final fade = (1 - progress).clamp(0.0, 1.0);

    final paint = Paint()
      ..color = color.withValues(alpha: fade)
      ..style = PaintingStyle.fill;

    for (var i = 0; i < particles; i++) {
      final angle = (i / particles) * 2 * math.pi;
      final dx = center.dx + r * math.cos(angle);
      final dy = center.dy + r * math.sin(angle);
      final dotSize = 3.0 * (1 - progress * 0.5);
      canvas.drawCircle(Offset(dx, dy), dotSize, paint);
    }

    // Outer ring
    final ringPaint = Paint()
      ..color = color.withValues(alpha: fade * 0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2 * (1 - progress);
    canvas.drawCircle(center, r * 0.8, ringPaint);
  }

  @override
  bool shouldRepaint(_BurstPainter old) => old.progress != progress;
}

/// Pressable wrapper — spring scale on press for tactile feedback.
class BounceTap extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final double scale;
  final Duration duration;

  const BounceTap({
    super.key,
    required this.child,
    this.onTap,
    this.scale = 0.96,
    this.duration = const Duration(milliseconds: 120),
  });

  @override
  State<BounceTap> createState() => _BounceTapState();
}

class _BounceTapState extends State<BounceTap> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.onTap == null
          ? null
          : (_) => setState(() => _pressed = true),
      onTapUp: widget.onTap == null
          ? null
          : (_) => setState(() => _pressed = false),
      onTapCancel: widget.onTap == null
          ? null
          : () => setState(() => _pressed = false),
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedScale(
        scale: _pressed ? widget.scale : 1.0,
        duration: widget.duration,
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}

/// Animated count number that smoothly interpolates between values.
class AnimatedCount extends StatelessWidget {
  final int value;
  final TextStyle? style;
  final Duration duration;

  const AnimatedCount({
    super.key,
    required this.value,
    this.style,
    this.duration = const Duration(milliseconds: 600),
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: value.toDouble()),
      duration: duration,
      curve: Curves.easeOutCubic,
      builder: (_, v, __) {
        return Text(v.toInt().toString(), style: style);
      },
    );
  }
}

/// Confetti burst — fires from center, particles fall with gravity.
class ConfettiBurst extends StatefulWidget {
  final Duration duration;
  final int particleCount;
  final double spread;

  const ConfettiBurst({
    super.key,
    this.duration = const Duration(seconds: 2),
    this.particleCount = 40,
    this.spread = 200,
  });

  @override
  State<ConfettiBurst> createState() => _ConfettiBurstState();
}

class _ConfettiBurstState extends State<ConfettiBurst>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final List<_Particle> _particles;

  static const _colors = [
    PulsarColors.primary,
    PulsarColors.secondary,
    PulsarColors.accent,
    PulsarColors.ecoGreen,
  ];

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration);
    final rng = math.Random();
    _particles = List.generate(widget.particleCount, (i) {
      return _Particle(
        angle: rng.nextDouble() * 2 * math.pi,
        velocity: 180 + rng.nextDouble() * 220,
        size: 5 + rng.nextDouble() * 6,
        color: _colors[rng.nextInt(_colors.length)],
        rotation: rng.nextDouble() * 4 * math.pi,
      );
    });
    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _ctrl,
        builder: (_, __) {
          return CustomPaint(
            size: Size.infinite,
            painter: _ConfettiPainter(
              particles: _particles,
              progress: _ctrl.value,
            ),
          );
        },
      ),
    );
  }
}

class _Particle {
  final double angle;
  final double velocity;
  final double size;
  final Color color;
  final double rotation;

  _Particle({
    required this.angle,
    required this.velocity,
    required this.size,
    required this.color,
    required this.rotation,
  });
}

class _ConfettiPainter extends CustomPainter {
  final List<_Particle> particles;
  final double progress;

  _ConfettiPainter({required this.particles, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final t = progress;
    final gravity = 600 * t * t;

    for (final p in particles) {
      final dx = center.dx + p.velocity * t * math.cos(p.angle);
      final dy = center.dy + p.velocity * t * math.sin(p.angle) + gravity;
      final alpha = (1 - t).clamp(0.0, 1.0);

      final paint = Paint()..color = p.color.withValues(alpha: alpha);
      canvas.save();
      canvas.translate(dx, dy);
      canvas.rotate(p.rotation * t);
      canvas.drawRect(
        Rect.fromCenter(
            center: Offset.zero, width: p.size, height: p.size * 0.4),
        paint,
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_ConfettiPainter old) => old.progress != progress;
}

/// Shimmer-like gradient sweep that travels across a widget — used for CTAs.
class ShimmerSheen extends StatefulWidget {
  final Widget child;
  final Duration interval;

  const ShimmerSheen({
    super.key,
    required this.child,
    this.interval = const Duration(seconds: 3),
  });

  @override
  State<ShimmerSheen> createState() => _ShimmerSheenState();
}

class _ShimmerSheenState extends State<ShimmerSheen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    _scheduleNext();
  }

  Future<void> _scheduleNext() async {
    await Future.delayed(widget.interval);
    if (!mounted) return;
    await _ctrl.forward(from: 0);
    if (mounted) _scheduleNext();
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
      builder: (_, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (rect) {
            final t = _ctrl.value;
            if (t == 0) {
              return const LinearGradient(
                colors: [Colors.white, Colors.white],
              ).createShader(rect);
            }
            return LinearGradient(
              begin: Alignment(-1 + t * 2, -1),
              end: Alignment(t * 2, 1),
              colors: const [
                Colors.transparent,
                Colors.white24,
                Colors.transparent,
              ],
              stops: const [0.3, 0.5, 0.7],
            ).createShader(rect);
          },
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
