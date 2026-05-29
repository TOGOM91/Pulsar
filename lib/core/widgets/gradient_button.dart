import 'package:flutter/material.dart';
import '../theme/colors.dart';

/// Premium gradient CTA button with spring animation and glow shadow.
class GradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFullWidth;
  final LinearGradient? gradient;
  final double height;
  final IconData? icon;
  final bool compact;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFullWidth = false,
    this.gradient,
    this.height = 56,
    this.icon,
    this.compact = false,
  });

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final grad = widget.gradient ?? PulsarColors.heroGradient;
    final h = widget.compact ? 44.0 : widget.height;

    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: widget.onPressed,
      child: AnimatedScale(
        scale: _pressed ? 0.97 : 1.0,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOutCubic,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: widget.isFullWidth ? double.infinity : null,
          height: h,
          padding: widget.isFullWidth
              ? null
              : const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            gradient: grad,
            borderRadius: BorderRadius.circular(PulsarTokens.radiusMd),
            boxShadow: _pressed
                ? []
                : [
                    BoxShadow(
                      color: grad.colors.first.withValues(alpha: 0.4),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                    BoxShadow(
                      color: grad.colors.last.withValues(alpha: 0.2),
                      blurRadius: 24,
                      offset: const Offset(0, 12),
                    ),
                  ],
          ),
          child: Row(
            mainAxisSize:
                widget.isFullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) ...[
                Icon(widget.icon,
                    size: widget.compact ? 16 : 20, color: Colors.white),
                SizedBox(width: widget.compact ? 6 : 10),
              ],
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: widget.compact ? 13 : 15,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
