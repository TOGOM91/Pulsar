// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get eventDate => throw _privateConstructorUsedError;
  String get eventLocation => throw _privateConstructorUsedError;
  String? get eventImageUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get ticketType => throw _privateConstructorUsedError;
  TicketStatus get status => throw _privateConstructorUsedError;
  DateTime get purchaseDate => throw _privateConstructorUsedError;
  String? get qrCodeData => throw _privateConstructorUsedError;
  String? get seatInfo => throw _privateConstructorUsedError;
  String? get transferredToEmail => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  double? get refundAmount => throw _privateConstructorUsedError;
  DateTime? get eventDateParsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String eventName,
      String eventDate,
      String eventLocation,
      String? eventImageUrl,
      double price,
      String ticketType,
      TicketStatus status,
      DateTime purchaseDate,
      String? qrCodeData,
      String? seatInfo,
      String? transferredToEmail,
      DateTime? cancelledAt,
      double? refundAmount,
      DateTime? eventDateParsed});
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? eventDate = null,
    Object? eventLocation = null,
    Object? eventImageUrl = freezed,
    Object? price = null,
    Object? ticketType = null,
    Object? status = null,
    Object? purchaseDate = null,
    Object? qrCodeData = freezed,
    Object? seatInfo = freezed,
    Object? transferredToEmail = freezed,
    Object? cancelledAt = freezed,
    Object? refundAmount = freezed,
    Object? eventDateParsed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventLocation: null == eventLocation
          ? _value.eventLocation
          : eventLocation // ignore: cast_nullable_to_non_nullable
              as String,
      eventImageUrl: freezed == eventImageUrl
          ? _value.eventImageUrl
          : eventImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qrCodeData: freezed == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as String?,
      seatInfo: freezed == seatInfo
          ? _value.seatInfo
          : seatInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      transferredToEmail: freezed == transferredToEmail
          ? _value.transferredToEmail
          : transferredToEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundAmount: freezed == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      eventDateParsed: freezed == eventDateParsed
          ? _value.eventDateParsed
          : eventDateParsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String eventName,
      String eventDate,
      String eventLocation,
      String? eventImageUrl,
      double price,
      String ticketType,
      TicketStatus status,
      DateTime purchaseDate,
      String? qrCodeData,
      String? seatInfo,
      String? transferredToEmail,
      DateTime? cancelledAt,
      double? refundAmount,
      DateTime? eventDateParsed});
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? eventName = null,
    Object? eventDate = null,
    Object? eventLocation = null,
    Object? eventImageUrl = freezed,
    Object? price = null,
    Object? ticketType = null,
    Object? status = null,
    Object? purchaseDate = null,
    Object? qrCodeData = freezed,
    Object? seatInfo = freezed,
    Object? transferredToEmail = freezed,
    Object? cancelledAt = freezed,
    Object? refundAmount = freezed,
    Object? eventDateParsed = freezed,
  }) {
    return _then(_$TicketModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: null == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventLocation: null == eventLocation
          ? _value.eventLocation
          : eventLocation // ignore: cast_nullable_to_non_nullable
              as String,
      eventImageUrl: freezed == eventImageUrl
          ? _value.eventImageUrl
          : eventImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TicketStatus,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qrCodeData: freezed == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as String?,
      seatInfo: freezed == seatInfo
          ? _value.seatInfo
          : seatInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      transferredToEmail: freezed == transferredToEmail
          ? _value.transferredToEmail
          : transferredToEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refundAmount: freezed == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      eventDateParsed: freezed == eventDateParsed
          ? _value.eventDateParsed
          : eventDateParsed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  const _$TicketModelImpl(
      {required this.id,
      required this.eventId,
      required this.eventName,
      required this.eventDate,
      required this.eventLocation,
      this.eventImageUrl,
      required this.price,
      required this.ticketType,
      this.status = TicketStatus.confirmed,
      required this.purchaseDate,
      this.qrCodeData,
      this.seatInfo,
      this.transferredToEmail,
      this.cancelledAt,
      this.refundAmount,
      this.eventDateParsed});

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String eventName;
  @override
  final String eventDate;
  @override
  final String eventLocation;
  @override
  final String? eventImageUrl;
  @override
  final double price;
  @override
  final String ticketType;
  @override
  @JsonKey()
  final TicketStatus status;
  @override
  final DateTime purchaseDate;
  @override
  final String? qrCodeData;
  @override
  final String? seatInfo;
  @override
  final String? transferredToEmail;
  @override
  final DateTime? cancelledAt;
  @override
  final double? refundAmount;
  @override
  final DateTime? eventDateParsed;

  @override
  String toString() {
    return 'TicketModel(id: $id, eventId: $eventId, eventName: $eventName, eventDate: $eventDate, eventLocation: $eventLocation, eventImageUrl: $eventImageUrl, price: $price, ticketType: $ticketType, status: $status, purchaseDate: $purchaseDate, qrCodeData: $qrCodeData, seatInfo: $seatInfo, transferredToEmail: $transferredToEmail, cancelledAt: $cancelledAt, refundAmount: $refundAmount, eventDateParsed: $eventDateParsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.eventLocation, eventLocation) ||
                other.eventLocation == eventLocation) &&
            (identical(other.eventImageUrl, eventImageUrl) ||
                other.eventImageUrl == eventImageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.qrCodeData, qrCodeData) ||
                other.qrCodeData == qrCodeData) &&
            (identical(other.seatInfo, seatInfo) ||
                other.seatInfo == seatInfo) &&
            (identical(other.transferredToEmail, transferredToEmail) ||
                other.transferredToEmail == transferredToEmail) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.eventDateParsed, eventDateParsed) ||
                other.eventDateParsed == eventDateParsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      eventName,
      eventDate,
      eventLocation,
      eventImageUrl,
      price,
      ticketType,
      status,
      purchaseDate,
      qrCodeData,
      seatInfo,
      transferredToEmail,
      cancelledAt,
      refundAmount,
      eventDateParsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      {required final String id,
      required final String eventId,
      required final String eventName,
      required final String eventDate,
      required final String eventLocation,
      final String? eventImageUrl,
      required final double price,
      required final String ticketType,
      final TicketStatus status,
      required final DateTime purchaseDate,
      final String? qrCodeData,
      final String? seatInfo,
      final String? transferredToEmail,
      final DateTime? cancelledAt,
      final double? refundAmount,
      final DateTime? eventDateParsed}) = _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get eventName;
  @override
  String get eventDate;
  @override
  String get eventLocation;
  @override
  String? get eventImageUrl;
  @override
  double get price;
  @override
  String get ticketType;
  @override
  TicketStatus get status;
  @override
  DateTime get purchaseDate;
  @override
  String? get qrCodeData;
  @override
  String? get seatInfo;
  @override
  String? get transferredToEmail;
  @override
  DateTime? get cancelledAt;
  @override
  double? get refundAmount;
  @override
  DateTime? get eventDateParsed;
  @override
  @JsonKey(ignore: true)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
