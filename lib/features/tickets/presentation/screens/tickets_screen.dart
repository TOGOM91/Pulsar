import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/skeleton.dart';
import '../providers/ticket_providers.dart';
import '../../domain/ticket_model.dart';

class TicketsScreen extends ConsumerWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final ticketsAsync = ref.watch(ticketNotifierProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            elevation: 0,
            scrolledUnderElevation: 0,
            backgroundColor: theme.scaffoldBackgroundColor,
            titleSpacing: 20,
            title: Row(
              children: [
                const Text('🎫', style: TextStyle(fontSize: 22)),
                const SizedBox(width: 8),
                Text(
                  'MES BILLETS',
                  style: PulsarTheme.display(28,
                      color: theme.colorScheme.onSurface),
                ),
              ],
            ),
          ),
          ticketsAsync.when(
            data: (tickets) {
              if (tickets.isEmpty) {
                return const SliverFillRemaining(child: _EmptyTickets());
              }
              return SliverPadding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => _TicketCard(
                      ticket: tickets[index],
                      index: index,
                    ),
                    childCount: tickets.length,
                  ),
                ),
              );
            },
            loading: () => SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, __) => const ListTileSkeleton(),
                  childCount: 3,
                ),
              ),
            ),
            error: (e, _) => SliverFillRemaining(
              child: Center(child: Text('Erreur: $e')),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyTickets extends StatelessWidget {
  const _EmptyTickets();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    PulsarColors.primary.withValues(alpha: 0.15),
                    PulsarColors.accent.withValues(alpha: 0.1),
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.confirmation_number_outlined,
                size: 60,
                color: PulsarColors.primary,
              ),
            )
                .animate(onPlay: (c) => c.repeat(reverse: true))
                .scale(
                  begin: const Offset(1, 1),
                  end: const Offset(1.05, 1.05),
                  duration: 2.seconds,
                ),
            const SizedBox(height: 24),
            Text(
              'AUCUN BILLET',
              style: PulsarTheme.display(32,
                  color: theme.colorScheme.onSurface),
            ),
            const SizedBox(height: 8),
            Text(
              'Tes billets apparaîtront ici\naprès ta première réservation',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: () => context.go('/explore'),
              icon: const Icon(Icons.explore_rounded, size: 18),
              label: const Text('Explorer les événements'),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(duration: 500.ms);
  }
}

class _TicketCard extends ConsumerWidget {
  final TicketModel ticket;
  final int index;

  const _TicketCard({required this.ticket, required this.index});

  Color _statusColor() {
    switch (ticket.status) {
      case TicketStatus.confirmed:
        return PulsarColors.ecoGreen;
      case TicketStatus.used:
        return PulsarColors.info;
      case TicketStatus.cancelled:
        return PulsarColors.error;
      case TicketStatus.transferred:
        return PulsarColors.accent;
      case TicketStatus.expired:
        return PulsarColors.textTertiaryLight;
    }
  }

  String _statusLabel() {
    switch (ticket.status) {
      case TicketStatus.confirmed:
        return '✓ CONFIRMÉ';
      case TicketStatus.used:
        return '✓ UTILISÉ';
      case TicketStatus.cancelled:
        return '✕ ANNULÉ';
      case TicketStatus.transferred:
        return '↗ TRANSFÉRÉ';
      case TicketStatus.expired:
        return '⏰ EXPIRÉ';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? PulsarColors.cardDark : PulsarColors.cardLight,
        borderRadius: BorderRadius.circular(PulsarTokens.radiusXl),
        boxShadow: PulsarColors.shadowLg(isDark),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Hero image ──
          Stack(
            children: [
              SizedBox(
                height: 140,
                width: double.infinity,
                child: ticket.eventImageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: ticket.eventImageUrl!,
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) => Container(
                          decoration: const BoxDecoration(
                            gradient: PulsarColors.heroGradient,
                          ),
                          child: const Center(
                            child: Text('🎫',
                                style: TextStyle(fontSize: 48)),
                          ),
                        ),
                      )
                    : Container(
                        decoration: const BoxDecoration(
                          gradient: PulsarColors.heroGradient,
                        ),
                        child: const Center(
                          child: Text('🎫', style: TextStyle(fontSize: 48)),
                        ),
                      ),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.75),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: _statusColor(),
                        borderRadius:
                            BorderRadius.circular(PulsarTokens.radiusFull),
                      ),
                      child: Text(
                        _statusLabel(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    if (ticket.status == TicketStatus.confirmed)
                      _TicketActionMenu(
                        ticket: ticket,
                        onTransfer: () => _showTransferDialog(context, ref),
                        onCancel: () => _showCancelDialog(context, ref),
                      ),
                  ],
                ),
              ),
              Positioned(
                bottom: 12,
                left: 16,
                right: 16,
                child: Text(
                  ticket.eventName,
                  style: PulsarTheme.display(24, color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          // ── Details ──
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Countdown chip
                if (ticket.status == TicketStatus.confirmed &&
                    ticket.timeUntil.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        gradient: PulsarColors.heroGradient,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.access_time_rounded,
                              color: Colors.white, size: 12),
                          const SizedBox(width: 4),
                          Text(
                            ticket.timeUntil.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                _DetailRow(
                  icon: Icons.calendar_today_rounded,
                  text: ticket.eventDate,
                ),
                const SizedBox(height: 6),
                _DetailRow(
                  icon: Icons.location_on_rounded,
                  text: ticket.eventLocation,
                ),
                const SizedBox(height: 6),
                _DetailRow(
                  icon: Icons.euro_rounded,
                  text:
                      '${ticket.price.toStringAsFixed(0)}€ • ${ticket.ticketType}',
                ),
                // Transfer / cancel status info
                if (ticket.status == TicketStatus.transferred &&
                    ticket.transferredToEmail != null) ...[
                  const SizedBox(height: 6),
                  _DetailRow(
                    icon: Icons.send_rounded,
                    text: 'Transféré à ${ticket.transferredToEmail}',
                  ),
                ],
                if (ticket.status == TicketStatus.cancelled &&
                    ticket.refundAmount != null) ...[
                  const SizedBox(height: 6),
                  _DetailRow(
                    icon: Icons.replay_rounded,
                    text:
                        'Remboursé : ${ticket.refundAmount!.toStringAsFixed(2)}€',
                  ),
                ],
              ],
            ),
          ),

          // ── Dashed divider ──
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
            child: Row(
              children: [
                _Semi(isLeft: true, isDark: isDark),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, c) {
                      final n = (c.maxWidth / 10).floor();
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          n,
                          (_) => Container(
                            width: 5,
                            height: 1.5,
                            color: theme.colorScheme.outlineVariant,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                _Semi(isLeft: false, isDark: isDark),
              ],
            ),
          ),

          // ── QR section + actions ──
          if (ticket.qrCodeData != null &&
              ticket.status == TicketStatus.confirmed)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => _showQrDialog(context),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(PulsarTokens.radiusMd),
                        boxShadow: PulsarColors.shadowSm(false),
                      ),
                      child: Column(
                        children: [
                          QrImageView(
                            data: ticket.qrCodeData!,
                            version: QrVersions.auto,
                            size: 140,
                            backgroundColor: Colors.white,
                            eyeStyle: const QrEyeStyle(
                              eyeShape: QrEyeShape.square,
                              color: PulsarColors.textPrimaryLight,
                            ),
                            dataModuleStyle: const QrDataModuleStyle(
                              dataModuleShape: QrDataModuleShape.square,
                              color: PulsarColors.textPrimaryLight,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'TAP POUR AGRANDIR',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: PulsarColors.textSecondaryLight,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Builder(builder: (ctx) {
                    return SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () => ctx.push(
                          '/transport/${ticket.eventId}',
                          extra: {
                            'eventName': ticket.eventName,
                            'eventLocation': ticket.eventLocation,
                          },
                        ),
                        icon: const Icon(Icons.directions_bus_rounded,
                            size: 16),
                        label: const Text('Choisir mon trajet bas carbone'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: PulsarColors.ecoGreen,
                          side:
                              const BorderSide(color: PulsarColors.ecoGreen),
                          padding:
                              const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
        ],
      ),
    )
        .animate()
        .fadeIn(
            delay: Duration(milliseconds: 80 * index), duration: 400.ms)
        .slideY(begin: 0.05);
  }

  void _showTransferDialog(BuildContext context, WidgetRef ref) {
    final ctrl = TextEditingController();
    String? error;
    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(builder: (ctx, setState) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(PulsarTokens.radiusXl)),
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.send_rounded,
                    color: PulsarColors.primary, size: 48),
                const SizedBox(height: 12),
                Text('Transférer le billet',
                    style: PulsarTheme.display(24,
                        color: Theme.of(ctx).colorScheme.onSurface),
                    textAlign: TextAlign.center),
                const SizedBox(height: 8),
                Text(
                  'Saisis l\'email du destinataire. Il recevra le billet et tu perdras l\'accès.',
                  style: Theme.of(ctx).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: ctrl,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email du destinataire',
                    errorText: error,
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(ctx),
                        child: const Text('Annuler'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          final email = ctrl.text.trim();
                          if (!RegExp(r'^[\w\.\-]+@[\w\.\-]+\.\w{2,}$')
                              .hasMatch(email)) {
                            setState(() => error = 'Email invalide');
                            return;
                          }
                          Navigator.pop(ctx);
                          await ref
                              .read(ticketNotifierProvider.notifier)
                              .transferTicket(ticket.id, email);
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Billet transféré à $email'),
                              ),
                            );
                          }
                        },
                        child: const Text('Transférer'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void _showCancelDialog(BuildContext context, WidgetRef ref) {
    final refund = ticket.price * 0.9;
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: PulsarColors.warning.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.warning_amber_rounded,
                    color: PulsarColors.warning, size: 36),
              ),
              const SizedBox(height: 16),
              Text('Annuler ce billet ?',
                  style: PulsarTheme.display(24,
                      color: Theme.of(ctx).colorScheme.onSurface),
                  textAlign: TextAlign.center),
              const SizedBox(height: 8),
              Text(
                'Tu seras remboursé de ${refund.toStringAsFixed(2)}€ (90% du prix). Cette action est définitive.',
                style: Theme.of(ctx).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: const Text('Non'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: PulsarColors.error,
                      ),
                      onPressed: () async {
                        Navigator.pop(ctx);
                        await ref
                            .read(ticketNotifierProvider.notifier)
                            .cancelTicket(ticket.id);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Billet annulé. ${refund.toStringAsFixed(2)}€ remboursés.'),
                            ),
                          );
                        }
                      },
                      child: const Text('Annuler le billet'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showQrDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PulsarTokens.radiusXl)),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                ticket.eventName,
                style: PulsarTheme.display(24,
                    color: Theme.of(ctx).colorScheme.onSurface),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                ticket.eventDate,
                style: Theme.of(ctx).textTheme.bodyMedium,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(PulsarTokens.radiusMd),
                ),
                child: QrImageView(
                  data: ticket.qrCodeData!,
                  version: QrVersions.auto,
                  size: 260,
                  backgroundColor: Colors.white,
                  eyeStyle: const QrEyeStyle(
                    eyeShape: QrEyeShape.square,
                    color: PulsarColors.textPrimaryLight,
                  ),
                  dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.square,
                    color: PulsarColors.textPrimaryLight,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: const Text('Fermer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const _DetailRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 13, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 6),
        Expanded(child: Text(text, style: theme.textTheme.bodyMedium)),
      ],
    );
  }
}

class _TicketActionMenu extends StatelessWidget {
  final TicketModel ticket;
  final VoidCallback onTransfer;
  final VoidCallback onCancel;

  const _TicketActionMenu({
    required this.ticket,
    required this.onTransfer,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.circle,
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert_rounded,
            color: Colors.white, size: 18),
        padding: const EdgeInsets.all(4),
        onSelected: (v) {
          if (v == 'transfer') onTransfer();
          if (v == 'cancel') onCancel();
        },
        itemBuilder: (_) => [
          const PopupMenuItem(
            value: 'transfer',
            child: Row(
              children: [
                Icon(Icons.send_rounded,
                    size: 18, color: PulsarColors.primary),
                SizedBox(width: 12),
                Text('Transférer à un ami'),
              ],
            ),
          ),
          const PopupMenuItem(
            value: 'cancel',
            child: Row(
              children: [
                Icon(Icons.cancel_outlined,
                    size: 18, color: PulsarColors.error),
                SizedBox(width: 12),
                Text('Annuler & rembourser'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Semi extends StatelessWidget {
  final bool isLeft;
  final bool isDark;
  const _Semi({required this.isLeft, required this.isDark});

  @override
  Widget build(BuildContext context) {
    final c =
        isDark ? PulsarColors.backgroundDark : PulsarColors.backgroundLight;
    return SizedBox(
      width: 14,
      height: 28,
      child: CustomPaint(painter: _SemiPainter(isLeft: isLeft, color: c)),
    );
  }
}

class _SemiPainter extends CustomPainter {
  final bool isLeft;
  final Color color;
  _SemiPainter({required this.isLeft, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final center = Offset(isLeft ? 0 : size.width, size.height / 2);
    canvas.drawCircle(center, size.height / 2, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}
