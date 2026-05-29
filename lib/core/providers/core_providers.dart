import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/app_database.dart';
import '../../features/events/data/event_repository.dart';
import '../../features/cart/data/cart_repository.dart';
import '../../features/cart/data/order_repository.dart';
import '../../features/tickets/data/ticket_repository.dart';

/// Top-level database. Initialized in main.dart, overridden via ProviderScope.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError(
    'appDatabaseProvider must be overridden in main.dart',
  );
});

/// Event repository provider.
final eventRepositoryProvider = Provider<EventRepository>((ref) {
  return EventRepository(ref.watch(appDatabaseProvider));
});

/// Cart repository provider.
final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(ref.watch(appDatabaseProvider));
});

/// Ticket repository provider.
final ticketRepositoryProvider = Provider<TicketRepository>((ref) {
  return TicketRepository(ref.watch(appDatabaseProvider));
});

/// Order repository provider.
final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepository(ref.watch(appDatabaseProvider));
});
