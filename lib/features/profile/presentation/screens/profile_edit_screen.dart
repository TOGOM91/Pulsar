import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/gradient_button.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

/// Editable profile screen — name, avatar, phone, bio, location, budget, genres.
class ProfileEditScreen extends ConsumerStatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  ConsumerState<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends ConsumerState<ProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _avatar = TextEditingController();
  final _phone = TextEditingController();
  final _bio = TextEditingController();
  final _location = TextEditingController();
  final _budget = TextEditingController();
  final _genres = TextEditingController();
  bool _loading = false;
  bool _hydrated = false;

  static const _availableGenres = [
    'rock',
    'metal',
    'electro',
    'pop',
    'jazz',
    'classique',
    'rap',
    'reggae',
    'folk',
    'indie',
    'house',
    'techno',
    'sport',
    'culturel',
    'gaming',
    'opera',
    'spectacles',
    'design',
    'art',
  ];

  void _hydrate() {
    if (_hydrated) return;
    final profile = ref.read(authProvider).maybeWhen(
          data: (a) => a is AuthAuthenticated ? a.profile : null,
          orElse: () => null,
        );
    if (profile == null) return;
    _name.text = profile.name;
    _avatar.text = profile.avatarUrl ?? '';
    _phone.text = profile.phone ?? '';
    _bio.text = profile.bio ?? '';
    _location.text = profile.locationName;
    _budget.text = profile.budgetMax.toStringAsFixed(0);
    _genres.text = profile.genres.join(', ');
    _hydrated = true;
  }

  @override
  void dispose() {
    _name.dispose();
    _avatar.dispose();
    _phone.dispose();
    _bio.dispose();
    _location.dispose();
    _budget.dispose();
    _genres.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);
    try {
      await ref.read(authProvider.notifier).updateProfile(
            name: _name.text.trim(),
            avatarUrl: _avatar.text.trim().isEmpty ? null : _avatar.text.trim(),
            phone: _phone.text.trim(),
            bio: _bio.text.trim(),
            locationName: _location.text.trim(),
            budgetMax: double.tryParse(_budget.text.trim()) ?? 300,
            genres: _genres.text
                .split(',')
                .map((s) => s.trim().toLowerCase())
                .where((s) => s.isNotEmpty)
                .toList(),
          );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: PulsarColors.ecoGreen,
            content: Text('Profil mis à jour.'),
            duration: Duration(seconds: 1),
          ),
        );
        context.pop();
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    _hydrate();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'ÉDITER LE PROFIL',
          style: PulsarTheme.display(22, color: theme.colorScheme.onSurface),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 100),
          children: [
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundColor:
                    PulsarColors.primary.withValues(alpha: 0.12),
                child: _avatar.text.trim().isEmpty
                    ? Text(
                        _name.text.isNotEmpty
                            ? _name.text[0].toUpperCase()
                            : '?',
                        style: PulsarTheme.display(40,
                            color: PulsarColors.primary),
                      )
                    : ClipOval(
                        child: Image.network(
                          _avatar.text.trim(),
                          width: 96,
                          height: 96,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Icon(
                            Icons.broken_image_rounded,
                            color: PulsarColors.primary,
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _name,
              decoration: const InputDecoration(
                labelText: 'Prénom / Nom *',
                prefixIcon: Icon(Icons.person_rounded),
              ),
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Requis' : null,
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _avatar,
              decoration: const InputDecoration(
                labelText: 'URL avatar (optionnel)',
                prefixIcon: Icon(Icons.image_rounded),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _phone,
              decoration: const InputDecoration(
                labelText: 'Téléphone',
                prefixIcon: Icon(Icons.phone_rounded),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _bio,
              decoration: const InputDecoration(
                labelText: 'Bio',
                prefixIcon: Icon(Icons.short_text_rounded),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _location,
              decoration: const InputDecoration(
                labelText: 'Ville / région',
                prefixIcon: Icon(Icons.location_on_rounded),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _budget,
              decoration: const InputDecoration(
                labelText: 'Budget max (€)',
                prefixIcon: Icon(Icons.euro_rounded),
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _genres,
              decoration: const InputDecoration(
                labelText: 'Genres préférés (CSV)',
                hintText: 'rock, electro, jazz...',
                prefixIcon: Icon(Icons.music_note_rounded),
              ),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: _availableGenres.map((g) {
                final selected = _genres.text
                    .split(',')
                    .map((s) => s.trim().toLowerCase())
                    .contains(g);
                return ChoiceChip(
                  label: Text(g),
                  selected: selected,
                  onSelected: (s) {
                    final current = _genres.text
                        .split(',')
                        .map((e) => e.trim())
                        .where((e) => e.isNotEmpty)
                        .toList();
                    if (s) {
                      if (!current.contains(g)) current.add(g);
                    } else {
                      current.remove(g);
                    }
                    setState(() => _genres.text = current.join(', '));
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 28),
            GradientButton(
              text: _loading ? 'Enregistrement...' : 'Enregistrer',
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
