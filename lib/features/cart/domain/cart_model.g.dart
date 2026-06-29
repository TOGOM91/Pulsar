// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      eventDate: json['eventDate'] as String,
      eventLocation: json['eventLocation'] as String,
      eventImageUrl: json['eventImageUrl'] as String?,
      unitPrice: (json['unitPrice'] as num).toDouble(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      ticketType: json['ticketType'] as String? ?? 'standard',
      transportOption: json['transportOption'] as String?,
      transportPrice: (json['transportPrice'] as num?)?.toDouble(),
      accommodationOption: json['accommodationOption'] as String?,
      accommodationPrice: (json['accommodationPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventDate': instance.eventDate,
      'eventLocation': instance.eventLocation,
      'eventImageUrl': instance.eventImageUrl,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'ticketType': instance.ticketType,
      'transportOption': instance.transportOption,
      'transportPrice': instance.transportPrice,
      'accommodationOption': instance.accommodationOption,
      'accommodationPrice': instance.accommodationPrice,
    };
