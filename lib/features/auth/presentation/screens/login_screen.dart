import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../../core/widgets/pulsar_logo.dart';
import '../providers/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() {
      _loading = true;
      _error = null;
    });

    final error = await ref.read(authProvider.notifier).signIn(
          email: _emailCtrl.text,
          password: _passwordCtrl.text,
        );

    if (!mounted) return;
    setState(() => _loading = false);

    if (error != null) {
      setState(() => _error = error);
    } else {
      context.go('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PulsarColors.backgroundDark,
      body: Stack(
        children: [
          Positioned(
            top: -120,
            right: -80,
            child: Container(
              width: 360,
              height: 360,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x4400D9CC), Color(0x0000D9CC)],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -180,
            left: -100,
            child: Container(
              width: 460,
              height: 460,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Color(0x33D96AE8), Color(0x00D96AE8)],
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_rounded,
                              color: Colors.white),
                          onPressed: () => context.pop(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    const PulsarLogo(fontSize: 18)
                        .animate()
                        .fadeIn(duration: 400.ms),

                    const SizedBox(height: 32),

                    Text(
                      'BON\nRETOUR !',
                      style: PulsarTheme.display(56,
                              color: Colors.white, letterSpacing: -1)
                          .copyWith(height: 0.95),
                    ).animate().fadeIn(delay: 100.ms).slideX(begin: -0.05),

                    const SizedBox(height: 12),

                    const Text(
                      'Connecte-toi pour continuer.',
                      style: TextStyle(
                        color: PulsarColors.textSecondaryDark,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ).animate().fadeIn(delay: 200.ms),

                    const SizedBox(height: 36),

                    TextFormField(
                      controller: _emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email_outlined,
                            color: PulsarColors.primary),
                        fillColor: Colors.white.withValues(alpha: 0.06),
                        labelStyle: const TextStyle(color: Colors.white70),
                      ),
                      validator: (v) =>
                          (v == null || v.isEmpty) ? 'Requis' : null,
                    ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.05),

                    const SizedBox(height: 14),

                    TextFormField(
                      controller: _passwordCtrl,
                      obscureText: _obscurePassword,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        prefixIcon: const Icon(Icons.lock_outline_rounded,
                            color: PulsarColors.primary),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.white60,
                          ),
                          onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword),
                        ),
                        fillColor: Colors.white.withValues(alpha: 0.06),
                        labelStyle: const TextStyle(color: Colors.white70),
                      ),
                      validator: (v) =>
                          (v == null || v.isEmpty) ? 'Requis' : null,
                    ).animate().fadeIn(delay: 350.ms).slideY(begin: 0.05),

                    if (_error != null) ...[
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          color: PulsarColors.error.withValues(alpha: 0.15),
                          borderRadius:
                              BorderRadius.circular(PulsarTokens.radiusMd),
                          border: Border.all(
                              color: PulsarColors.error.withValues(alpha: 0.4)),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.error_outline_rounded,
                                color: PulsarColors.error, size: 18),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                _error!,
                                style: const TextStyle(
                                  color: PulsarColors.error,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                    const SizedBox(height: 32),

                    _loading
                        ? const Center(child: CircularProgressIndicator())
                        : GradientButton(
                            text: 'SE CONNECTER',
                            icon: Icons.login_rounded,
                            isFullWidth: true,
                            onPressed: _submit,
                          ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.1),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Pas encore de compte ? ',
                          style: TextStyle(
                              color: Colors.white60, fontSize: 13),
                        ),
                        GestureDetector(
                          onTap: () => context.pushReplacement('/register'),
                          child: const Text(
                            "S'inscrire",
                            style: TextStyle(
                              color: PulsarColors.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ).animate().fadeIn(delay: 500.ms),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
