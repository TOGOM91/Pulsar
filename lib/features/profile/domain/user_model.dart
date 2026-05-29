import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User profile model with preferences and eco stats.
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    @Default('') String email,
    String? avatarUrl,
    @Default(2024) int memberSince,
    required UserPreferences preferences,
    required UserStats stats,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @Default([]) List<String> genres,
    @Default(500) double budgetMax,
    @Default('Paris') String location,
    @Default('fr') String language,
    @Default(true) bool darkMode,
    @Default(true) bool notificationsEnabled,
    @Default(true) bool ecoMode,
  }) = _UserPreferences;

  factory UserPreferences.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesFromJson(json);
}

@freezed
class UserStats with _$UserStats {
  const factory UserStats({
    @Default(0) int eventsBooked,
    @Default(0.0) double co2SavedKg,
    @Default(0.0) double moneySavedEur,
    @Default(100) int percentile,
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);
}
