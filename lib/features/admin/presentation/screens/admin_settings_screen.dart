import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../providers/admin_provider.dart';

class AdminSettingsScreen extends ConsumerStatefulWidget {
  const AdminSettingsScreen({super.key});

  @override
  ConsumerState<AdminSettingsScreen> createState() =>
      _AdminSettingsScreenState();
}

class _AdminSettingsScreenState extends ConsumerState<AdminSettingsScreen> {
  final _tax = TextEditingController();
  final _service = TextEditingController();
  final _support = TextEditingController();
  final _maintenanceMsg = TextEditingController();
  final _maxTickets = TextEditingController();
  final _stripe = TextEditingController();
  var _maintenance = false;
  var _simulation = true;
  var _initialized = false;

  @override
  void dispose() {
    _tax.dispose();
    _service.dispose();
    _support.dispose();
    _maintenanceMsg.dispose();
    _maxTickets.dispose();
    _stripe.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final settings = ref.watch(appSettingsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Row(
          children: [
            const Text('⚙️', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            Text('RÉGLAGES',
                style: PulsarTheme.display(24,
                    color: theme.colorScheme.onSurface)),
          ],
        ),
      ),
      body: settings.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Erreur: $e')),
        data: (s) {
          if (!_initialized) {
            _tax.text = (s.taxRate * 100).toStringAsFixed(1);
            _service.text = (s.serviceFeeRate * 100).toStringAsFixed(1);
            _support.text = s.supportEmail;
            _maintenanceMsg.text = s.maintenanceMessage;
            _maintenance = s.maintenanceMode;
            _maxTickets.text = s.maxTicketsPerOrder.toString();
            _stripe.text = s.stripePublishableKey ?? '';
            _simulation = s.paymentSimulation;
            _initialized = true;
          }

          return ListView(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 140),
            children: [
              _Header('💰 Tarification'),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _tax,
                      decoration: const InputDecoration(
                        labelText: 'TVA (%)',
                        prefixIcon: Icon(Icons.percent_rounded),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                          decimal: true),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _service,
                      decoration: const InputDecoration(
                        labelText: 'Frais service (%)',
                        prefixIcon: Icon(Icons.business_center_rounded),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                          decimal: true),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _maxTickets,
                decoration: const InputDecoration(
                  labelText: 'Billets max par commande',
                  prefixIcon: Icon(Icons.confirmation_number_rounded),
                ),
                keyboardType: TextInputType.number,
              ),

              _Header('📞 Support'),
              TextField(
                controller: _support,
                decoration: const InputDecoration(
                  labelText: 'Email support',
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              _Header('💳 Paiement'),
              SwitchListTile(
                value: _simulation,
                title: const Text('Mode simulation'),
                subtitle: const Text(
                    'Aucune transaction réelle. Mets à OFF en prod après config Stripe.'),
                activeThumbColor: PulsarColors.primary,
                onChanged: (v) => setState(() => _simulation = v),
                contentPadding: EdgeInsets.zero,
              ),
              TextField(
                controller: _stripe,
                decoration: const InputDecoration(
                  labelText: 'Clé publique Stripe (pk_…)',
                  prefixIcon: Icon(Icons.key_rounded),
                  helperText:
                      'Stockée localement. La clé secrète reste côté serveur.',
                ),
                obscureText: false,
              ),

              _Header('🚧 Maintenance'),
              SwitchListTile(
                value: _maintenance,
                title: const Text('Mode maintenance'),
                subtitle: const Text(
                    'Bloque les achats et affiche un message aux utilisateurs.'),
                activeThumbColor: PulsarColors.warning,
                onChanged: (v) => setState(() => _maintenance = v),
                contentPadding: EdgeInsets.zero,
              ),
              TextField(
                controller: _maintenanceMsg,
                decoration: const InputDecoration(
                  labelText: 'Message maintenance',
                  prefixIcon: Icon(Icons.report_rounded),
                ),
                maxLines: 2,
              ),

              const SizedBox(height: 28),
              GradientButton(
                text: 'Enregistrer',
                icon: Icons.save_rounded,
                isFullWidth: true,
                onPressed: () async {
                  final actor = ref.read(currentProfileProvider);
                  if (actor == null) return;
                  await ref.read(adminRepositoryProvider).updateSettings(
                        actor: actor,
                        taxRate: double.tryParse(_tax.text.trim())
                                ?.let((v) => v / 100) ??
                            s.taxRate,
                        serviceFeeRate: double.tryParse(_service.text.trim())
                                ?.let((v) => v / 100) ??
                            s.serviceFeeRate,
                        supportEmail: _support.text.trim(),
                        maintenanceMode: _maintenance,
                        maintenanceMessage: _maintenanceMsg.text.trim(),
                        maxTicketsPerOrder:
                            int.tryParse(_maxTickets.text.trim()) ??
                                s.maxTicketsPerOrder,
                        stripePublishableKey: _stripe.text.trim().isEmpty
                            ? null
                            : _stripe.text.trim(),
                        paymentSimulation: _simulation,
                      );
                  ref.invalidate(appSettingsProvider);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: PulsarColors.ecoGreen,
                        content: Text('Réglages enregistrés.'),
                      ),
                    );
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

extension _Tap<T> on T {
  R let<R>(R Function(T) f) => f(this);
}

class _Header extends StatelessWidget {
  final String label;
  // ignore: unused_element_parameter
  const _Header(this.label);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
              color: PulsarColors.primary,
            ),
      ),
    );
  }
}
