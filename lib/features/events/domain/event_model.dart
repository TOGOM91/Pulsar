import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

/// Core event model used across the app.
/// Represents concerts, festivals, expos, shows, etc.
@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String name,
    required String category,
    required String duration,
    required String imageUrl,
    @Default('') String gradient,
    @Default([]) List<EventBadge> badges,
    required EventDetails details,
    required EventPricing pricing,
    @Default([]) List<String> genres,
    @Default(false) bool isFavorite,
    @Default(0) int delayAnimation,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}

@freezed
class EventBadge with _$EventBadge {
  const factory EventBadge({
    required String type,
    required String text,
  }) = _EventBadge;

  factory EventBadge.fromJson(Map<String, dynamic> json) =>
      _$EventBadgeFromJson(json);
}

@freezed
class EventDetails with _$EventDetails {
  const factory EventDetails({
    required String date,
    required String location,
    @Default('') String transport,
    String? accommodation,
  }) = _EventDetails;

  factory EventDetails.fromJson(Map<String, dynamic> json) =>
      _$EventDetailsFromJson(json);
}

@freezed
class EventPricing with _$EventPricing {
  const factory EventPricing({
    required String label,
    required double amount,
    double? savings,
    String? savingsText,
    @Default('€') String currency,
  }) = _EventPricing;

  factory EventPricing.fromJson(Map<String, dynamic> json) =>
      _$EventPricingFromJson(json);
}
