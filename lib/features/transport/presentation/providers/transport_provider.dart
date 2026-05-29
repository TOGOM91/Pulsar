import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/transport_service.dart';
import '../../domain/transport_models.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

final transportServiceProvider = Provider<TransportService>((ref) {
  return TransportService();
});

/// Returns transport options for a given event id + location.
final transportOptionsProvider = Provider.family<List<TransportOption>,
    ({String eventId, String eventLocation})>((ref, params) {
  final service = ref.watch(transportServiceProvider);
  final auth = ref.watch(authProvider).valueOrNull;
  final userCity =
      auth is AuthAuthenticated ? auth.profile.locationName : 'Paris';
  return service.getOptionsForEvent(
    eventId: params.eventId,
    eventLocation: params.eventLocation,
    userCity: userCity.isEmpty ? 'Paris' : userCity,
  );
});

/// Sort criterion for the comparator.
final transportSortProvider =
    StateProvider<TransportSortBy>((ref) => TransportSortBy.ecoScore);
