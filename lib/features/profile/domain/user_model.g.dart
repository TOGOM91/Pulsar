// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String?,
      memberSince: (json['memberSince'] as num?)?.toInt() ?? 2024,
      preferences:
          UserPreferences.fromJson(json['preferences'] as Map<String, dynamic>),
      stats: UserStats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'memberSince': instance.memberSince,
      'preferences': instance.preferences,
      'stats': instance.stats,
    };

_$UserPreferencesImpl _$$UserPreferencesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPreferencesImpl(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      budgetMax: (json['budgetMax'] as num?)?.toDouble() ?? 500,
      location: json['location'] as String? ?? 'Paris',
      language: json['language'] as String? ?? 'fr',
      darkMode: json['darkMode'] as bool? ?? true,
      notificationsEnabled: json['notificationsEnabled'] as bool? ?? true,
      ecoMode: json['ecoMode'] as bool? ?? true,
    );

Map<String, dynamic> _$$UserPreferencesImplToJson(
        _$UserPreferencesImpl instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'budgetMax': instance.budgetMax,
      'location': instance.location,
      'language': instance.language,
      'darkMode': instance.darkMode,
      'notificationsEnabled': instance.notificationsEnabled,
      'ecoMode': instance.ecoMode,
    };

_$UserStatsImpl _$$UserStatsImplFromJson(Map<String, dynamic> json) =>
    _$UserStatsImpl(
      eventsBooked: (json['eventsBooked'] as num?)?.toInt() ?? 0,
      co2SavedKg: (json['co2SavedKg'] as num?)?.toDouble() ?? 0.0,
      moneySavedEur: (json['moneySavedEur'] as num?)?.toDouble() ?? 0.0,
      percentile: (json['percentile'] as num?)?.toInt() ?? 100,
    );

Map<String, dynamic> _$$UserStatsImplToJson(_$UserStatsImpl instance) =>
    <String, dynamic>{
      'eventsBooked': instance.eventsBooked,
      'co2SavedKg': instance.co2SavedKg,
      'moneySavedEur': instance.moneySavedEur,
      'percentile': instance.percentile,
    };
