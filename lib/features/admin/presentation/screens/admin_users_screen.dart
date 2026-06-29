import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/database/models.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../domain/role.dart';
import '../providers/admin_provider.dart';

class AdminUsersScreen extends ConsumerWidget {
  const AdminUsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final users = ref.watch(adminUsersListProvider);
    final role = ref.watch(currentRoleProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('👥', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text(
              'UTILISATEURS',
              style: PulsarTheme.display(24,
                  color: theme.colorScheme.onSurface),
            ),
          ],
        ),
      ),
      body: users.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (list) {
          if (list.isEmpty) {
            return const Center(child: Text('Aucun utilisateur.'));
          }
          return RefreshIndicator(
            color: PulsarColors.primary,
            onRefresh: () async => ref.invalidate(adminUsersListProvider),
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 140),
              itemCount: list.length,
              separatorBuilder: (_, __) => const SizedBox(height: 10),
              itemBuilder: (_, i) => _UserCard(
                user: list[i],
                actorRole: role,
                onChangeRole: () => _showRolePicker(context, ref, list[i]),
                onSuspend: () => _showSuspendDialog(context, ref, list[i]),
                onReinstate: () async {
                  final actor = ref.read(currentProfileProvider);
                  if (actor == null) return;
                  await ref
                      .read(adminRepositoryProvider)
                      .reinstateUser(actor: actor, targetEmail: list[i].email);
                  ref.invalidate(adminUsersListProvider);
                  ref.invalidate(authProvider);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showRolePicker(
      BuildContext context, WidgetRef ref, IsarUserProfile user) async {
    final picked = await showModalBottomSheet<UserRole>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Rôle de ${user.name}',
                style: Theme.of(ctx).textTheme.titleLarge,
              ),
            ),
            for (final r in UserRole.values)
              ListTile(
                leading: Text(r.emoji, style: const TextStyle(fontSize: 22)),
                title: Text(r.label),
                subtitle: Text(_roleDescription(r)),
                trailing: r.wire == user.role
                    ? const Icon(Icons.check_circle, color: PulsarColors.primary)
                    : null,
                onTap: () => Navigator.pop(ctx, r),
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
    if (picked == null) return;
    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;
    await ref.read(adminRepositoryProvider).changeRole(
          actor: actor,
          targetEmail: user.email,
          newRole: picked,
        );
    ref.invalidate(adminUsersListProvider);
    ref.invalidate(authProvider);
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${user.name} → ${picked.label}')),
      );
    }
  }

  Future<void> _showSuspendDialog(
      BuildContext context, WidgetRef ref, IsarUserProfile user) async {
    final ctrl = TextEditingController();
    final reason = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Suspendre ${user.name} ?'),
        content: TextField(
          controller: ctrl,
          decoration: const InputDecoration(
            labelText: 'Motif',
            hintText: 'Spam, abus, demande de l\'utilisateur...',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Annuler'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: PulsarColors.error),
            onPressed: () =>
                Navigator.pop(ctx, ctrl.text.trim().isEmpty
                    ? 'Non précisé'
                    : ctrl.text.trim()),
            child: const Text('Suspendre'),
          ),
        ],
      ),
    );
    if (reason == null) return;
    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;
    await ref.read(adminRepositoryProvider).suspendUser(
          actor: actor,
          targetEmail: user.email,
          reason: reason,
        );
    ref.invalidate(adminUsersListProvider);
    ref.invalidate(authProvider);
  }

  String _roleDescription(UserRole r) {
    switch (r) {
      case UserRole.owner:
        return 'Accès complet (events, users, settings, refunds).';
      case UserRole.collaborator:
        return 'Édition events + promos + broadcasts. Pas de delete.';
      case UserRole.user:
        return 'Utilisateur final.';
    }
  }
}

class _UserCard extends StatelessWidget {
  final IsarUserProfile user;
  final UserRole actorRole;
  final VoidCallback onChangeRole;
  final VoidCallback onSuspend;
  final VoidCallback onReinstate;

  const _UserCard({
    required this.user,
    required this.actorRole,
    required this.onChangeRole,
    required this.onSuspend,
    required this.onReinstate,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final role = UserRole.fromWire(user.role);
    final fmt = DateFormat('dd/MM/yyyy');

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusLg),
        border: Border.all(
          color: user.isSuspended
              ? PulsarColors.error.withValues(alpha: 0.4)
              : theme.colorScheme.outline.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: PulsarColors.primary.withValues(alpha: 0.15),
            child: Text(
              user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
              style: const TextStyle(
                color: PulsarColors.primary,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        user.name,
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (user.isSuspended)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                          color: PulsarColors.error.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          'SUSPENDU',
                          style: TextStyle(
                            color: PulsarColors.error,
                            fontSize: 9,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                  ],
                ),
                Text(user.email, style: theme.textTheme.bodySmall),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        gradient: role.isAdmin
                            ? PulsarColors.heroGradient
                            : null,
                        color: role.isAdmin
                            ? null
                            : theme.colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        '${role.emoji} ${role.label}',
                        style: TextStyle(
                          color: role.isAdmin
                              ? Colors.white
                              : theme.colorScheme.primary,
                          fontWeight: FontWeight.w800,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Inscrit ${fmt.format(user.createdAt)}',
                      style:
                          theme.textTheme.bodySmall?.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (actorRole.canChangeRoles)
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_rounded),
              onSelected: (v) {
                if (v == 'role') onChangeRole();
                if (v == 'suspend') onSuspend();
                if (v == 'reinstate') onReinstate();
              },
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: 'role',
                  child: ListTile(
                    leading: Icon(Icons.workspace_premium_rounded),
                    title: Text('Changer rôle'),
                    dense: true,
                  ),
                ),
                if (!user.isSuspended)
                  const PopupMenuItem(
                    value: 'suspend',
                    child: ListTile(
                      leading: Icon(Icons.block_rounded,
                          color: PulsarColors.error),
                      title: Text('Suspendre',
                          style: TextStyle(color: PulsarColors.error)),
                      dense: true,
                    ),
                  )
                else
                  const PopupMenuItem(
                    value: 'reinstate',
                    child: ListTile(
                      leading: Icon(Icons.check_circle_outline_rounded,
                          color: PulsarColors.ecoGreen),
                      title: Text('Réintégrer'),
                      dense: true,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
