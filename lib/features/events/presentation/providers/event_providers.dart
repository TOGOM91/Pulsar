import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/core_providers.dart';
import '../../domain/event_model.dart';

/// Currently selected genre filter.
final selectedGenreProvider = StateProvider<String>((ref) => 'all');

/// Search query.
final searchQueryProvider = StateProvider<String>((ref) => '');

/// Trending events.
final trendingEventsProvider = FutureProvider<List<EventModel>>((ref) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.getEventsBySection('trending');
});

/// Upcoming events.
final upcomingEventsProvider = FutureProvider<List<EventModel>>((ref) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.getEventsBySection('upcoming');
});

/// All events.
final allEventsProvider = FutureProvider<List<EventModel>>((ref) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.getAllEvents();
});

/// Filtered events based on selected genre.
final filteredEventsProvider = FutureProvider<List<EventModel>>((ref) async {
  final genre = ref.watch(selectedGenreProvider);
  final repo = ref.watch(eventRepositoryProvider);

  if (genre == 'all') {
    return repo.getAllEvents();
  }
  return repo.filterByGenre(genre);
});

/// Search results.
final searchResultsProvider = FutureProvider<List<EventModel>>((ref) async {
  final query = ref.watch(searchQueryProvider);
  if (query.isEmpty) return [];
  final repo = ref.watch(eventRepositoryProvider);
  return repo.searchEvents(query);
});

/// Single event detail.
final eventDetailProvider =
    FutureProvider.family<EventModel?, String>((ref, eventId) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.getEventById(eventId);
});

/// Favorite events.
final favoriteEventsProvider = FutureProvider<List<EventModel>>((ref) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.getFavorites();
});

/// Check if a specific event is favorited.
final isFavoriteProvider =
    FutureProvider.family<bool, String>((ref, eventId) async {
  final repo = ref.watch(eventRepositoryProvider);
  return repo.isFavorite(eventId);
});
