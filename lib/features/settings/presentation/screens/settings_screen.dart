import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/providers/theme_provider.dart';
import '../../../../core/providers/locale_provider.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../../admin/presentation/providers/admin_provider.dart';

/// Settings screen — dark mode, language, notifications, about.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(localeProvider);
    final profile = ref.watch(currentProfileProvider);
    final role = ref.watch(currentRoleProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres', style: theme.textTheme.displaySmall),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // ── Appearance ──
          const _SectionHeader(title: 'Apparence')
              .animate()
              .fadeIn(duration: 300.ms),
          const SizedBox(height: 12),
          _SettingsCard(
            children: [
              _ToggleTile(
                icon: Icons.dark_mode_rounded,
                title: 'Mode sombre',
                subtitle: isDark ? 'Activé' : 'Désactivé',
                value: themeMode == ThemeMode.dark,
                onChanged: (val) {
                  ref.read(themeProvider.notifier).setThemeMode(
                        val ? ThemeMode.dark : ThemeMode.light,
                      );
                },
              ),
              const Divider(height: 1),
              _TapTile(
                icon: Icons.language_rounded,
                title: 'Langue',
                subtitle: locale.languageCode == 'fr' ? 'Français' : 'English',
                onTap: () {
                  ref.read(localeProvider.notifier).toggleLocale();
                },
              ),
            ],
          ).animate().fadeIn(delay: 100.ms, duration: 300.ms).slideY(begin: 0.03),

          const SizedBox(height: 24),

          // ── Notifications ──
          const _SectionHeader(title: 'Notifications')
              .animate()
              .fadeIn(delay: 150.ms, duration: 300.ms),
          const SizedBox(height: 12),
          _SettingsCard(
            children: [
              _ToggleTile(
                icon: Icons.notifications_rounded,
                title: 'Notifications push',
                subtitle: 'Rappels événements, alertes trajet',
                value: profile?.notificationsEnabled ?? true,
                onChanged: (val) async {
                  await ref
                      .read(authProvider.notifier)
                      .updateProfile(notificationsEnabled: val);
                },
              ),
              const Divider(height: 1),
              _ToggleTile(
                icon: Icons.email_rounded,
                title: 'Notifications email',
                subtitle: 'Confirmations, résumés hebdomadaires',
                value: profile?.emailNotificationsEnabled ?? true,
                onChanged: (val) async {
                  await ref
                      .read(authProvider.notifier)
                      .updateProfile(emailNotificationsEnabled: val);
                },
              ),
              const Divider(height: 1),
              _ToggleTile(
                icon: Icons.group_rounded,
                title: 'Notifications sociales',
                subtitle: 'Amis, groupes, communauté',
                value: profile?.socialNotificationsEnabled ?? false,
                onChanged: (val) async {
                  await ref
                      .read(authProvider.notifier)
                      .updateProfile(socialNotificationsEnabled: val);
                },
              ),
            ],
          ).animate().fadeIn(delay: 200.ms, duration: 300.ms).slideY(begin: 0.03),

          const SizedBox(height: 24),

          // ── Eco preferences ──
          const _SectionHeader(title: 'Éco-responsabilité')
              .animate()
              .fadeIn(delay: 250.ms, duration: 300.ms),
          const SizedBox(height: 12),
          _SettingsCard(
            children: [
              _ToggleTile(
                icon: Icons.eco_rounded,
                title: 'Mode éco',
                subtitle: 'Prioriser les options bas carbone',
                value: profile?.ecoMode ?? true,
                iconColor: PulsarColors.ecoGreen,
                onChanged: (val) async {
                  await ref
                      .read(authProvider.notifier)
                      .updateProfile(ecoMode: val);
                },
              ),
              const Divider(height: 1),
              _ToggleTile(
                icon: Icons.bar_chart_rounded,
                title: 'Afficher l\'empreinte carbone',
                subtitle: 'Sur chaque option de transport',
                value: profile?.showCarbonFootprint ?? true,
                iconColor: PulsarColors.ecoGreen,
                onChanged: (val) async {
                  await ref
                      .read(authProvider.notifier)
                      .updateProfile(showCarbonFootprint: val);
                },
              ),
            ],
          ).animate().fadeIn(delay: 300.ms, duration: 300.ms).slideY(begin: 0.03),

          if (role.isAdmin) ...[
            const SizedBox(height: 24),
            const _SectionHeader(title: 'Espace admin')
                .animate()
                .fadeIn(delay: 320.ms, duration: 300.ms),
            const SizedBox(height: 12),
            _SettingsCard(
              children: [
                _TapTile(
                  icon: Icons.shield_rounded,
                  title: role.isOwner ? 'Dashboard admin' : 'Dashboard staff',
                  subtitle: 'Événements, commandes, utilisateurs',
                  onTap: () => context.go('/admin'),
                ),
                if (role.canEditAppSettings) ...[
                  const Divider(height: 1),
                  _TapTile(
                    icon: Icons.tune_rounded,
                    title: 'Réglages globaux',
                    subtitle: 'TVA, devise, maintenance, Stripe',
                    onTap: () => context.push('/admin/settings'),
                  ),
                ],
              ],
            ).animate().fadeIn(delay: 360.ms, duration: 300.ms).slideY(begin: 0.03),
          ],

          const SizedBox(height: 24),

          // ── About ──
          const _SectionHeader(title: 'À propos')
              .animate()
              .fadeIn(delay: 350.ms, duration: 300.ms),
          const SizedBox(height: 12),
          _SettingsCard(
            children: [
              _TapTile(
                icon: Icons.info_outline_rounded,
                title: 'Version',
                subtitle: 'Pulsar v1.0.0',
                onTap: () {},
              ),
              const Divider(height: 1),
              _TapTile(
                icon: Icons.description_outlined,
                title: 'Conditions d\'utilisation',
                subtitle: '',
                onTap: () {},
              ),
              const Divider(height: 1),
              _TapTile(
                icon: Icons.privacy_tip_outlined,
                title: 'Politique de confidentialité',
                subtitle: '',
                onTap: () {},
              ),
            ],
          ).animate().fadeIn(delay: 400.ms, duration: 300.ms).slideY(begin: 0.03),

          const SizedBox(height: 32),

          // Logout button
          OutlinedButton.icon(
            onPressed: () async {
              await ref.read(authProvider.notifier).signOut();
            },
            icon: const Icon(Icons.logout_rounded, color: PulsarColors.error),
            label: const Text(
              'Se déconnecter',
              style: TextStyle(color: PulsarColors.error),
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: PulsarColors.error),
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ).animate().fadeIn(delay: 450.ms, duration: 300.ms),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  final List<Widget> children;

  const _SettingsCard({required this.children});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.15 : 0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Material(
        type: MaterialType.transparency,
        child: Column(children: children),
      ),
    );
  }
}

class _ToggleTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? iconColor;

  const _ToggleTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = iconColor ?? theme.colorScheme.primary;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 20, color: color),
      ),
      title: Text(title, style: theme.textTheme.titleMedium),
      subtitle: subtitle.isNotEmpty
          ? Text(subtitle, style: theme.textTheme.bodySmall)
          : null,
      trailing: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeThumbColor: PulsarColors.primary,
      ),
    );
  }
}

class _TapTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _TapTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 20, color: theme.colorScheme.primary),
      ),
      title: Text(title, style: theme.textTheme.titleMedium),
      subtitle: subtitle.isNotEmpty
          ? Text(subtitle, style: theme.textTheme.bodySmall)
          : null,
      trailing: Icon(
        Icons.chevron_right_rounded,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      onTap: onTap,
    );
  }
}
