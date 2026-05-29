import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/core_providers.dart';
import '../../domain/ticket_model.dart';

/// All user tickets.
final ticketsProvider = FutureProvider<List<TicketModel>>((ref) async {
  final repo = ref.watch(ticketRepositoryProvider);
  return repo.getAllTickets();
});

/// Notifier for ticket mutations.
class TicketNotifier extends StateNotifier<AsyncValue<List<TicketModel>>> {
  final Ref _ref;

  TicketNotifier(this._ref) : super(const AsyncValue.loading()) {
    _load();
  }

  Future<void> _load() async {
    try {
      final repo = _ref.read(ticketRepositoryProvider);
      final tickets = await repo.getAllTickets();
      state = AsyncValue.data(tickets);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<TicketModel> purchaseTicket({
    required String eventId,
    required String eventName,
    required String eventDate,
    required String eventLocation,
    String? eventImageUrl,
    required double price,
    String ticketType = 'standard',
  }) async {
    final repo = _ref.read(ticketRepositoryProvider);
    final ticket = await repo.createTicket(
      eventId: eventId,
      eventName: eventName,
      eventDate: eventDate,
      eventLocation: eventLocation,
      eventImageUrl: eventImageUrl,
      price: price,
      ticketType: ticketType,
    );
    await _load();
    return ticket;
  }

  Future<void> cancelTicket(String ticketId) async {
    final repo = _ref.read(ticketRepositoryProvider);
    await repo.cancelTicket(ticketId);
    await _load();
  }

  Future<void> transferTicket(String ticketId, String email) async {
    final repo = _ref.read(ticketRepositoryProvider);
    await repo.transferTicket(ticketId, email);
    await _load();
  }

  void refresh() => _load();
}

final ticketNotifierProvider =
    StateNotifierProvider<TicketNotifier, AsyncValue<List<TicketModel>>>((ref) {
  return TicketNotifier(ref);
});
