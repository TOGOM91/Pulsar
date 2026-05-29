// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      duration: json['duration'] as String,
      imageUrl: json['imageUrl'] as String,
      gradient: json['gradient'] as String? ?? '',
      badges: (json['badges'] as List<dynamic>?)
              ?.map((e) => EventBadge.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      details: EventDetails.fromJson(json['details'] as Map<String, dynamic>),
      pricing: EventPricing.fromJson(json['pricing'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isFavorite: json['isFavorite'] as bool? ?? false,
      delayAnimation: (json['delayAnimation'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'duration': instance.duration,
      'imageUrl': instance.imageUrl,
      'gradient': instance.gradient,
      'badges': instance.badges,
      'details': instance.details,
      'pricing': instance.pricing,
      'genres': instance.genres,
      'isFavorite': instance.isFavorite,
      'delayAnimation': instance.delayAnimation,
    };

_$EventBadgeImpl _$$EventBadgeImplFromJson(Map<String, dynamic> json) =>
    _$EventBadgeImpl(
      type: json['type'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$EventBadgeImplToJson(_$EventBadgeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

_$EventDetailsImpl _$$EventDetailsImplFromJson(Map<String, dynamic> json) =>
    _$EventDetailsImpl(
      date: json['date'] as String,
      location: json['location'] as String,
      transport: json['transport'] as String? ?? '',
      accommodation: json['accommodation'] as String?,
    );

Map<String, dynamic> _$$EventDetailsImplToJson(_$EventDetailsImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'location': instance.location,
      'transport': instance.transport,
      'accommodation': instance.accommodation,
    };

_$EventPricingImpl _$$EventPricingImplFromJson(Map<String, dynamic> json) =>
    _$EventPricingImpl(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      savings: (json['savings'] as num?)?.toDouble(),
      savingsText: json['savingsText'] as String?,
      currency: json['currency'] as String? ?? '€',
    );

Map<String, dynamic> _$$EventPricingImplToJson(_$EventPricingImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'savings': instance.savings,
      'savingsText': instance.savingsText,
      'currency': instance.currency,
    };
