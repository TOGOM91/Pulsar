import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../database/isar_service.dart';
import '../../features/events/data/event_repository.dart';
import '../../features/cart/data/cart_repository.dart';
import '../../features/cart/data/order_repository.dart';
import '../../features/tickets/data/ticket_repository.dart';

/// Provides the Isar database instance.
final isarProvider = FutureProvider<Isar>((ref) async {
  return IsarService.instance;
});

/// Event repository provider.
final eventRepositoryProvider = Provider<EventRepository>((ref) {
  final isar = ref.watch(isarProvider).value;
  if (isar == null) throw StateError('Isar not initialized');
  return EventRepository(isar);
});

/// Cart repository provider.
final cartRepositoryProvider = Provider<CartRepository>((ref) {
  final isar = ref.watch(isarProvider).value;
  if (isar == null) throw StateError('Isar not initialized');
  return CartRepository(isar);
});

/// Ticket repository provider.
final ticketRepositoryProvider = Provider<TicketRepository>((ref) {
  final isar = ref.watch(isarProvider).value;
  if (isar == null) throw StateError('Isar not initialized');
  return TicketRepository(isar);
});

/// Order repository provider.
final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  final isar = ref.watch(isarProvider).value;
  if (isar == null) throw StateError('Isar not initialized');
  return OrderRepository(isar);
});
