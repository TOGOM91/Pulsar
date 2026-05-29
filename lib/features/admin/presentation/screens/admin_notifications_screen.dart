import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../notifications/domain/notification_model.dart';
import '../../../notifications/presentation/providers/notifications_provider.dart';
import '../providers/admin_provider.dart';

class AdminNotificationsScreen extends ConsumerStatefulWidget {
  const AdminNotificationsScreen({super.key});

  @override
  ConsumerState<AdminNotificationsScreen> createState() =>
      _AdminNotificationsScreenState();
}

class _AdminNotificationsScreenState
    extends ConsumerState<AdminNotificationsScreen> {
  final _title = TextEditingController();
  final _body = TextEditingController();
  final _route = TextEditingController();
  String _audience = 'all';
  NotificationCategory _category = NotificationCategory.system;

  @override
  void dispose() {
    _title.dispose();
    _body.dispose();
    _route.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    if (_title.text.trim().isEmpty || _body.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Titre et corps requis.')),
      );
      return;
    }
    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;
    await ref.read(adminRepositoryProvider).sendBroadcast(
          actor: actor,
          title: _title.text.trim(),
          body: _body.text.trim(),
          audience: _audience,
          category: _category.name,
          actionRoute:
              _route.text.trim().isEmpty ? null : _route.text.trim(),
        );

    // Replay locally for immediate feedback. This shows up in the user's
    // in-app notifications list.
    ref.read(notificationsProvider.notifier).pushLocal(
          AppNotification(
            id: 'br-${DateTime.now().millisecondsSinceEpoch}',
            category: _category,
            title: _title.text.trim(),
            body: _body.text.trim(),
            time: DateTime.now(),
            actionRoute:
                _route.text.trim().isEmpty ? null : _route.text.trim(),
          ),
        );

    ref.invalidate(broadcastsProvider);
    if (mounted) {
      _title.clear();
      _body.clear();
      _route.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: PulsarColors.ecoGreen,
          content: Text('Notification envoyée.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final broadcasts = ref.watch(broadcastsProvider);
    final fmt = DateFormat('dd/MM HH:mm');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('📣', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('NOTIFICATIONS',
                style: PulsarTheme.display(24,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 140),
        children: [
          Text('COMPOSER',
              style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                    color: PulsarColors.primary,
                  )),
          const SizedBox(height: 12),
          TextField(
            controller: _title,
            decoration: const InputDecoration(
              labelText: 'Titre',
              prefixIcon: Icon(Icons.title_rounded),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _body,
            decoration: const InputDecoration(
              labelText: 'Corps',
              prefixIcon: Icon(Icons.notes_rounded),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _route,
            decoration: const InputDecoration(
              labelText: 'Lien (optionnel)',
              hintText: '/event/hellfest-2026',
              prefixIcon: Icon(Icons.link_rounded),
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<NotificationCategory>(
            initialValue: _category,
            decoration: const InputDecoration(
              labelText: 'Catégorie',
              prefixIcon: Icon(Icons.category_rounded),
            ),
            items: NotificationCategory.values
                .map((c) => DropdownMenuItem(
                      value: c,
                      child: Text(_catLabel(c)),
                    ))
                .toList(),
            onChanged: (v) => setState(() => _category = v ?? _category),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            initialValue: _audience,
            decoration: const InputDecoration(
              labelText: 'Cible',
              prefixIcon: Icon(Icons.people_rounded),
            ),
            items: const [
              DropdownMenuItem(value: 'all', child: Text('Tous')),
              DropdownMenuItem(
                  value: 'role:user', child: Text('Utilisateurs')),
              DropdownMenuItem(
                  value: 'role:collaborator', child: Text('Collaborateurs')),
              DropdownMenuItem(
                  value: 'role:owner', child: Text('Propriétaires')),
            ],
            onChanged: (v) => setState(() => _audience = v ?? _audience),
          ),
          const SizedBox(height: 18),
          GradientButton(
            text: 'Envoyer',
            icon: Icons.send_rounded,
            isFullWidth: true,
            onPressed: _send,
          ),
          const SizedBox(height: 28),
          Text('HISTORIQUE',
              style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                    color: PulsarColors.primary,
                  )),
          const SizedBox(height: 12),
          broadcasts.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Text('Erreur: $e'),
            data: (list) {
              if (list.isEmpty) {
                return Text('Aucun envoi.',
                    style: theme.textTheme.bodySmall);
              }
              return Column(
                children: [
                  for (final b in list)
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.brightness == Brightness.dark
                            ? PulsarColors.cardDark
                            : PulsarColors.cardLight,
                        borderRadius:
                            BorderRadius.circular(PulsarTokens.radiusLg),
                        border: Border.all(
                            color: theme.colorScheme.outline
                                .withValues(alpha: 0.3)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(b.title,
                                    style: theme.textTheme.titleMedium),
                              ),
                              Text(
                                fmt.format(b.sentAt),
                                style: theme.textTheme.bodySmall?.copyWith(
                                    fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(b.body, style: theme.textTheme.bodySmall),
                          const SizedBox(height: 4),
                          Text(
                            'Cible: ${b.audience} · Par ${b.sentByEmail}',
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontSize: 10,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  String _catLabel(NotificationCategory c) {
    switch (c) {
      case NotificationCategory.event:
        return '🎟️ Événement';
      case NotificationCategory.transport:
        return '🚄 Transport';
      case NotificationCategory.eco:
        return '🌱 Éco';
      case NotificationCategory.social:
        return '👥 Social';
      case NotificationCategory.system:
        return '⚙️ Système';
    }
  }
}
