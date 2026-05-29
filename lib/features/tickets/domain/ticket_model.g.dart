// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      eventDate: json['eventDate'] as String,
      eventLocation: json['eventLocation'] as String,
      eventImageUrl: json['eventImageUrl'] as String?,
      price: (json['price'] as num).toDouble(),
      ticketType: json['ticketType'] as String,
      status: $enumDecodeNullable(_$TicketStatusEnumMap, json['status']) ??
          TicketStatus.confirmed,
      purchaseDate: DateTime.parse(json['purchaseDate'] as String),
      qrCodeData: json['qrCodeData'] as String?,
      seatInfo: json['seatInfo'] as String?,
      transferredToEmail: json['transferredToEmail'] as String?,
      cancelledAt: json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
      refundAmount: (json['refundAmount'] as num?)?.toDouble(),
      eventDateParsed: json['eventDateParsed'] == null
          ? null
          : DateTime.parse(json['eventDateParsed'] as String),
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'eventDate': instance.eventDate,
      'eventLocation': instance.eventLocation,
      'eventImageUrl': instance.eventImageUrl,
      'price': instance.price,
      'ticketType': instance.ticketType,
      'status': _$TicketStatusEnumMap[instance.status]!,
      'purchaseDate': instance.purchaseDate.toIso8601String(),
      'qrCodeData': instance.qrCodeData,
      'seatInfo': instance.seatInfo,
      'transferredToEmail': instance.transferredToEmail,
      'cancelledAt': instance.cancelledAt?.toIso8601String(),
      'refundAmount': instance.refundAmount,
      'eventDateParsed': instance.eventDateParsed?.toIso8601String(),
    };

const _$TicketStatusEnumMap = {
  TicketStatus.confirmed: 'confirmed',
  TicketStatus.used: 'used',
  TicketStatus.cancelled: 'cancelled',
  TicketStatus.transferred: 'transferred',
  TicketStatus.expired: 'expired',
};
