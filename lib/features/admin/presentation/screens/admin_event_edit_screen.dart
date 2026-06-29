import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../events/presentation/providers/event_providers.dart';
import '../../data/admin_repository.dart';
import '../providers/admin_provider.dart';

/// Create OR edit an event. Pass null for create, an eventId for edit.
class AdminEventEditScreen extends ConsumerStatefulWidget {
  final String? eventId;
  const AdminEventEditScreen({super.key, this.eventId});

  @override
  ConsumerState<AdminEventEditScreen> createState() =>
      _AdminEventEditScreenState();
}

class _AdminEventEditScreenState extends ConsumerState<AdminEventEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _category = TextEditingController(text: 'Festival');
  final _duration = TextEditingController();
  final _imageUrl = TextEditingController();
  final _gradient = TextEditingController(
      text: 'linear-gradient(135deg, #7C3AED 0%, #06B6D4 100%)');
  final _date = TextEditingController();
  final _location = TextEditingController();
  final _transport = TextEditingController();
  final _accommodation = TextEditingController();
  final _pricingLabel = TextEditingController(text: 'Pass complet');
  final _pricingAmount = TextEditingController();
  final _pricingSavings = TextEditingController();
  final _pricingSavingsText = TextEditingController();
  final _genres = TextEditingController();
  final _badgeTypes = TextEditingController(text: 'eco');
  final _badgeTexts = TextEditingController(text: '🌱 Bas carbone');
  final _sortOrder = TextEditingController(text: '0');

  String _section = 'upcoming';
  String _currency = '€';
  bool _isPublished = true;
  bool _loading = false;

  bool get _isEdit => widget.eventId != null;

  @override
  void initState() {
    super.initState();
    if (_isEdit) {
      _loading = true;
      WidgetsBinding.instance.addPostFrameCallback((_) => _hydrate());
    }
  }

  Future<void> _hydrate() async {
    final repo = ref.read(adminRepositoryProvider);
    final event = await repo.findEvent(widget.eventId!);
    if (event == null) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Événement introuvable.')));
        Navigator.of(context).pop();
      }
      return;
    }
    _name.text = event.name;
    _category.text = event.category;
    _duration.text = event.duration;
    _imageUrl.text = event.imageUrl;
    _gradient.text = event.gradient;
    _date.text = event.date;
    _location.text = event.location;
    _transport.text = event.transport;
    _accommodation.text = event.accommodation ?? '';
    _pricingLabel.text = event.pricingLabel;
    _pricingAmount.text = event.pricingAmount.toStringAsFixed(2);
    _pricingSavings.text = event.pricingSavings?.toStringAsFixed(2) ?? '';
    _pricingSavingsText.text = event.pricingSavingsText ?? '';
    _genres.text = event.genres.join(', ');
    _badgeTypes.text = event.badgeTypes.join(', ');
    _badgeTexts.text = event.badgeTexts.join(' | ');
    _sortOrder.text = event.sortOrder.toString();
    _section = event.section;
    _currency = event.currency;
    _isPublished = event.isPublished;
    if (mounted) setState(() => _loading = false);
  }

  @override
  void dispose() {
    _name.dispose();
    _category.dispose();
    _duration.dispose();
    _imageUrl.dispose();
    _gradient.dispose();
    _date.dispose();
    _location.dispose();
    _transport.dispose();
    _accommodation.dispose();
    _pricingLabel.dispose();
    _pricingAmount.dispose();
    _pricingSavings.dispose();
    _pricingSavingsText.dispose();
    _genres.dispose();
    _badgeTypes.dispose();
    _badgeTexts.dispose();
    _sortOrder.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final actor = ref.read(currentProfileProvider);
    if (actor == null) return;

    setState(() => _loading = true);
    try {
      final input = AdminEventInput(
        eventId: _isEdit ? widget.eventId! : '',
        name: _name.text.trim(),
        category: _category.text.trim(),
        duration: _duration.text.trim(),
        imageUrl: _imageUrl.text.trim(),
        gradient: _gradient.text.trim(),
        date: _date.text.trim(),
        location: _location.text.trim(),
        transport: _transport.text.trim(),
        accommodation: _accommodation.text.trim().isEmpty
            ? null
            : _accommodation.text.trim(),
        pricingLabel: _pricingLabel.text.trim(),
        pricingAmount: double.tryParse(_pricingAmount.text.trim()) ?? 0,
        pricingSavings: _pricingSavings.text.trim().isEmpty
            ? null
            : double.tryParse(_pricingSavings.text.trim()),
        pricingSavingsText: _pricingSavingsText.text.trim().isEmpty
            ? null
            : _pricingSavingsText.text.trim(),
        currency: _currency,
        genres: _genres.text
            .split(',')
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList(),
        badgeTypes: _badgeTypes.text
            .split(',')
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList(),
        badgeTexts: _badgeTexts.text
            .split('|')
            .map((s) => s.trim())
            .where((s) => s.isNotEmpty)
            .toList(),
        section: _section,
        sortOrder: int.tryParse(_sortOrder.text.trim()) ?? 0,
        isPublished: _isPublished,
      );

      final repo = ref.read(adminRepositoryProvider);
      if (_isEdit) {
        await repo.updateEvent(
            actor: actor, eventId: widget.eventId!, input: input);
      } else {
        await repo.createEvent(actor: actor, input: input);
      }

      ref.invalidate(adminEventsListProvider);
      ref.invalidate(allEventsProvider);
      ref.invalidate(trendingEventsProvider);
      ref.invalidate(upcomingEventsProvider);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: PulsarColors.ecoGreen,
            content: Text(_isEdit ? 'Modifié.' : 'Créé.'),
            duration: const Duration(seconds: 1),
          ),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Erreur : $e')));
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
        title: Text(
          _isEdit ? 'ÉDITER' : 'NOUVEL ÉVÉNEMENT',
          style: PulsarTheme.display(22,
              color: theme.colorScheme.onSurface),
        ),
      ),
      body: _loading && _isEdit && _name.text.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 140),
                children: [
                  const _SectionTitle('Identité'),
                  _Field(
                    controller: _name,
                    label: 'Nom',
                    required: true,
                    icon: Icons.event_rounded,
                  ),
                  _Field(
                    controller: _category,
                    label: 'Catégorie',
                    hint: 'Festival, Concert, Sport, Salon, Opéra...',
                    icon: Icons.category_rounded,
                  ),
                  _Field(
                    controller: _duration,
                    label: 'Durée',
                    hint: '3 jours, 1 soir, 2 semaines...',
                    icon: Icons.schedule_rounded,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: _DropdownField(
                          label: 'Section',
                          value: _section,
                          icon: Icons.layers_rounded,
                          items: const [
                            ('trending', '🔥 Trending'),
                            ('upcoming', '📅 À venir'),
                          ],
                          onChanged: (v) => setState(() => _section = v),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _Field(
                          controller: _sortOrder,
                          label: 'Ordre',
                          icon: Icons.sort_rounded,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),

                  const _SectionTitle('Visuel'),
                  _Field(
                    controller: _imageUrl,
                    label: 'URL image',
                    icon: Icons.image_rounded,
                    hint: 'https://...',
                  ),
                  _Field(
                    controller: _gradient,
                    label: 'Gradient CSS (optionnel)',
                    icon: Icons.gradient_rounded,
                    hint: 'linear-gradient(135deg, #..., #...)',
                  ),

                  const _SectionTitle('Lieu & date'),
                  _Field(
                    controller: _date,
                    label: 'Date',
                    icon: Icons.calendar_today_rounded,
                    hint: '12 juin 2026, 14-19 mars 2026...',
                    required: true,
                  ),
                  _Field(
                    controller: _location,
                    label: 'Lieu',
                    icon: Icons.location_on_rounded,
                    required: true,
                  ),
                  _Field(
                    controller: _transport,
                    label: 'Transport conseillé',
                    icon: Icons.train_rounded,
                    hint: 'TGV direct • 62€, Métro inclus...',
                  ),
                  _Field(
                    controller: _accommodation,
                    label: 'Hébergement (optionnel)',
                    icon: Icons.hotel_rounded,
                    hint: "Camping • 50€/nuit, Chez l'habitant...",
                  ),

                  const _SectionTitle('Tarification'),
                  _Field(
                    controller: _pricingLabel,
                    label: 'Label tarif',
                    icon: Icons.label_rounded,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: _Field(
                          controller: _pricingAmount,
                          label: 'Prix',
                          icon: Icons.euro_rounded,
                          required: true,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9.]')),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 110,
                        child: _DropdownField(
                          label: 'Devise',
                          value: _currency,
                          icon: Icons.currency_exchange_rounded,
                          items: const [
                            ('€', '€ EUR'),
                            (r'$', r'$ USD'),
                            ('£', '£ GBP'),
                          ],
                          onChanged: (v) => setState(() => _currency = v),
                        ),
                      ),
                    ],
                  ),
                  _Field(
                    controller: _pricingSavings,
                    label: 'Économie (€) — optionnel',
                    icon: Icons.savings_rounded,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                    ],
                  ),
                  _Field(
                    controller: _pricingSavingsText,
                    label: 'Texte économie (optionnel)',
                    icon: Icons.text_fields_rounded,
                    hint: '✅ Transport gratuit, 🎉 Gratuit...',
                  ),

                  const _SectionTitle('Tags'),
                  _Field(
                    controller: _genres,
                    label: 'Genres (CSV)',
                    icon: Icons.music_note_rounded,
                    hint: 'rock, metal, electro...',
                  ),
                  _Field(
                    controller: _badgeTypes,
                    label: 'Types de badge (CSV)',
                    icon: Icons.bookmark_rounded,
                    hint: 'eco, hot, new',
                  ),
                  _Field(
                    controller: _badgeTexts,
                    label: 'Textes badges (séparés par |)',
                    icon: Icons.local_fire_department_rounded,
                    hint: '🌱 -78% CO₂ | 🔥 Populaire',
                  ),

                  const SizedBox(height: 20),
                  SwitchListTile(
                    value: _isPublished,
                    activeThumbColor: PulsarColors.primary,
                    onChanged: (v) => setState(() => _isPublished = v),
                    title: const Text('Publié (visible des utilisateurs)'),
                    contentPadding: EdgeInsets.zero,
                  ),
                  const SizedBox(height: 24),
                  GradientButton(
                    text: _loading
                        ? 'Enregistrement...'
                        : (_isEdit ? 'Enregistrer' : 'Créer'),
                    icon: Icons.save_rounded,
                    isFullWidth: true,
                    onPressed: _loading ? () {} : _save,
                  ),
                ],
              ),
            ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String label;
  // ignore: unused_element_parameter
  const _SectionTitle(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 8),
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

class _Field extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hint;
  final IconData? icon;
  final bool required;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const _Field({
    required this.controller,
    required this.label,
    this.hint,
    this.icon,
    this.required = false,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: required ? '$label *' : label,
          hintText: hint,
          prefixIcon: icon != null ? Icon(icon, size: 20) : null,
        ),
        validator: required
            ? (v) => (v == null || v.trim().isEmpty) ? 'Requis' : null
            : null,
      ),
    );
  }
}

class _DropdownField extends StatelessWidget {
  final String label;
  final String value;
  final List<(String, String)> items;
  final ValueChanged<String> onChanged;
  final IconData? icon;

  const _DropdownField({
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: DropdownButtonFormField<String>(
        initialValue: value,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: icon != null ? Icon(icon, size: 20) : null,
        ),
        items: [
          for (final (v, l) in items)
            DropdownMenuItem(value: v, child: Text(l)),
        ],
        onChanged: (v) {
          if (v != null) onChanged(v);
        },
      ),
    );
  }
}
