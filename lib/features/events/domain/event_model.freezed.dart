// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get gradient => throw _privateConstructorUsedError;
  List<EventBadge> get badges => throw _privateConstructorUsedError;
  EventDetails get details => throw _privateConstructorUsedError;
  EventPricing get pricing => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  int get delayAnimation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String duration,
      String imageUrl,
      String gradient,
      List<EventBadge> badges,
      EventDetails details,
      EventPricing pricing,
      List<String> genres,
      bool isFavorite,
      int delayAnimation});

  $EventDetailsCopyWith<$Res> get details;
  $EventPricingCopyWith<$Res> get pricing;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? duration = null,
    Object? imageUrl = null,
    Object? gradient = null,
    Object? badges = null,
    Object? details = null,
    Object? pricing = null,
    Object? genres = null,
    Object? isFavorite = null,
    Object? delayAnimation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gradient: null == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<EventBadge>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as EventDetails,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as EventPricing,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      delayAnimation: null == delayAnimation
          ? _value.delayAnimation
          : delayAnimation // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventDetailsCopyWith<$Res> get details {
    return $EventDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventPricingCopyWith<$Res> get pricing {
    return $EventPricingCopyWith<$Res>(_value.pricing, (value) {
      return _then(_value.copyWith(pricing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String category,
      String duration,
      String imageUrl,
      String gradient,
      List<EventBadge> badges,
      EventDetails details,
      EventPricing pricing,
      List<String> genres,
      bool isFavorite,
      int delayAnimation});

  @override
  $EventDetailsCopyWith<$Res> get details;
  @override
  $EventPricingCopyWith<$Res> get pricing;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? duration = null,
    Object? imageUrl = null,
    Object? gradient = null,
    Object? badges = null,
    Object? details = null,
    Object? pricing = null,
    Object? genres = null,
    Object? isFavorite = null,
    Object? delayAnimation = null,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gradient: null == gradient
          ? _value.gradient
          : gradient // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<EventBadge>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as EventDetails,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as EventPricing,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      delayAnimation: null == delayAnimation
          ? _value.delayAnimation
          : delayAnimation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.name,
      required this.category,
      required this.duration,
      required this.imageUrl,
      this.gradient = '',
      final List<EventBadge> badges = const [],
      required this.details,
      required this.pricing,
      final List<String> genres = const [],
      this.isFavorite = false,
      this.delayAnimation = 0})
      : _badges = badges,
        _genres = genres;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String category;
  @override
  final String duration;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final String gradient;
  final List<EventBadge> _badges;
  @override
  @JsonKey()
  List<EventBadge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final EventDetails details;
  @override
  final EventPricing pricing;
  final List<String> _genres;
  @override
  @JsonKey()
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final int delayAnimation;

  @override
  String toString() {
    return 'EventModel(id: $id, name: $name, category: $category, duration: $duration, imageUrl: $imageUrl, gradient: $gradient, badges: $badges, details: $details, pricing: $pricing, genres: $genres, isFavorite: $isFavorite, delayAnimation: $delayAnimation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.gradient, gradient) ||
                other.gradient == gradient) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.pricing, pricing) || other.pricing == pricing) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.delayAnimation, delayAnimation) ||
                other.delayAnimation == delayAnimation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      duration,
      imageUrl,
      gradient,
      const DeepCollectionEquality().hash(_badges),
      details,
      pricing,
      const DeepCollectionEquality().hash(_genres),
      isFavorite,
      delayAnimation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final String id,
      required final String name,
      required final String category,
      required final String duration,
      required final String imageUrl,
      final String gradient,
      final List<EventBadge> badges,
      required final EventDetails details,
      required final EventPricing pricing,
      final List<String> genres,
      final bool isFavorite,
      final int delayAnimation}) = _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get category;
  @override
  String get duration;
  @override
  String get imageUrl;
  @override
  String get gradient;
  @override
  List<EventBadge> get badges;
  @override
  EventDetails get details;
  @override
  EventPricing get pricing;
  @override
  List<String> get genres;
  @override
  bool get isFavorite;
  @override
  int get delayAnimation;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventBadge _$EventBadgeFromJson(Map<String, dynamic> json) {
  return _EventBadge.fromJson(json);
}

/// @nodoc
mixin _$EventBadge {
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventBadgeCopyWith<EventBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventBadgeCopyWith<$Res> {
  factory $EventBadgeCopyWith(
          EventBadge value, $Res Function(EventBadge) then) =
      _$EventBadgeCopyWithImpl<$Res, EventBadge>;
  @useResult
  $Res call({String type, String text});
}

/// @nodoc
class _$EventBadgeCopyWithImpl<$Res, $Val extends EventBadge>
    implements $EventBadgeCopyWith<$Res> {
  _$EventBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventBadgeImplCopyWith<$Res>
    implements $EventBadgeCopyWith<$Res> {
  factory _$$EventBadgeImplCopyWith(
          _$EventBadgeImpl value, $Res Function(_$EventBadgeImpl) then) =
      __$$EventBadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String text});
}

/// @nodoc
class __$$EventBadgeImplCopyWithImpl<$Res>
    extends _$EventBadgeCopyWithImpl<$Res, _$EventBadgeImpl>
    implements _$$EventBadgeImplCopyWith<$Res> {
  __$$EventBadgeImplCopyWithImpl(
      _$EventBadgeImpl _value, $Res Function(_$EventBadgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_$EventBadgeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventBadgeImpl implements _EventBadge {
  const _$EventBadgeImpl({required this.type, required this.text});

  factory _$EventBadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventBadgeImplFromJson(json);

  @override
  final String type;
  @override
  final String text;

  @override
  String toString() {
    return 'EventBadge(type: $type, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventBadgeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventBadgeImplCopyWith<_$EventBadgeImpl> get copyWith =>
      __$$EventBadgeImplCopyWithImpl<_$EventBadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventBadgeImplToJson(
      this,
    );
  }
}

abstract class _EventBadge implements EventBadge {
  const factory _EventBadge(
      {required final String type,
      required final String text}) = _$EventBadgeImpl;

  factory _EventBadge.fromJson(Map<String, dynamic> json) =
      _$EventBadgeImpl.fromJson;

  @override
  String get type;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$EventBadgeImplCopyWith<_$EventBadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventDetails _$EventDetailsFromJson(Map<String, dynamic> json) {
  return _EventDetails.fromJson(json);
}

/// @nodoc
mixin _$EventDetails {
  String get date => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get transport => throw _privateConstructorUsedError;
  String? get accommodation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDetailsCopyWith<EventDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDetailsCopyWith<$Res> {
  factory $EventDetailsCopyWith(
          EventDetails value, $Res Function(EventDetails) then) =
      _$EventDetailsCopyWithImpl<$Res, EventDetails>;
  @useResult
  $Res call(
      {String date, String location, String transport, String? accommodation});
}

/// @nodoc
class _$EventDetailsCopyWithImpl<$Res, $Val extends EventDetails>
    implements $EventDetailsCopyWith<$Res> {
  _$EventDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? location = null,
    Object? transport = null,
    Object? accommodation = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      accommodation: freezed == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDetailsImplCopyWith<$Res>
    implements $EventDetailsCopyWith<$Res> {
  factory _$$EventDetailsImplCopyWith(
          _$EventDetailsImpl value, $Res Function(_$EventDetailsImpl) then) =
      __$$EventDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date, String location, String transport, String? accommodation});
}

/// @nodoc
class __$$EventDetailsImplCopyWithImpl<$Res>
    extends _$EventDetailsCopyWithImpl<$Res, _$EventDetailsImpl>
    implements _$$EventDetailsImplCopyWith<$Res> {
  __$$EventDetailsImplCopyWithImpl(
      _$EventDetailsImpl _value, $Res Function(_$EventDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? location = null,
    Object? transport = null,
    Object? accommodation = freezed,
  }) {
    return _then(_$EventDetailsImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      accommodation: freezed == accommodation
          ? _value.accommodation
          : accommodation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDetailsImpl implements _EventDetails {
  const _$EventDetailsImpl(
      {required this.date,
      required this.location,
      this.transport = '',
      this.accommodation});

  factory _$EventDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDetailsImplFromJson(json);

  @override
  final String date;
  @override
  final String location;
  @override
  @JsonKey()
  final String transport;
  @override
  final String? accommodation;

  @override
  String toString() {
    return 'EventDetails(date: $date, location: $location, transport: $transport, accommodation: $accommodation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDetailsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.accommodation, accommodation) ||
                other.accommodation == accommodation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, location, transport, accommodation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDetailsImplCopyWith<_$EventDetailsImpl> get copyWith =>
      __$$EventDetailsImplCopyWithImpl<_$EventDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDetailsImplToJson(
      this,
    );
  }
}

abstract class _EventDetails implements EventDetails {
  const factory _EventDetails(
      {required final String date,
      required final String location,
      final String transport,
      final String? accommodation}) = _$EventDetailsImpl;

  factory _EventDetails.fromJson(Map<String, dynamic> json) =
      _$EventDetailsImpl.fromJson;

  @override
  String get date;
  @override
  String get location;
  @override
  String get transport;
  @override
  String? get accommodation;
  @override
  @JsonKey(ignore: true)
  _$$EventDetailsImplCopyWith<_$EventDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventPricing _$EventPricingFromJson(Map<String, dynamic> json) {
  return _EventPricing.fromJson(json);
}

/// @nodoc
mixin _$EventPricing {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double? get savings => throw _privateConstructorUsedError;
  String? get savingsText => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventPricingCopyWith<EventPricing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPricingCopyWith<$Res> {
  factory $EventPricingCopyWith(
          EventPricing value, $Res Function(EventPricing) then) =
      _$EventPricingCopyWithImpl<$Res, EventPricing>;
  @useResult
  $Res call(
      {String label,
      double amount,
      double? savings,
      String? savingsText,
      String currency});
}

/// @nodoc
class _$EventPricingCopyWithImpl<$Res, $Val extends EventPricing>
    implements $EventPricingCopyWith<$Res> {
  _$EventPricingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? savings = freezed,
    Object? savingsText = freezed,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      savings: freezed == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsText: freezed == savingsText
          ? _value.savingsText
          : savingsText // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventPricingImplCopyWith<$Res>
    implements $EventPricingCopyWith<$Res> {
  factory _$$EventPricingImplCopyWith(
          _$EventPricingImpl value, $Res Function(_$EventPricingImpl) then) =
      __$$EventPricingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      double amount,
      double? savings,
      String? savingsText,
      String currency});
}

/// @nodoc
class __$$EventPricingImplCopyWithImpl<$Res>
    extends _$EventPricingCopyWithImpl<$Res, _$EventPricingImpl>
    implements _$$EventPricingImplCopyWith<$Res> {
  __$$EventPricingImplCopyWithImpl(
      _$EventPricingImpl _value, $Res Function(_$EventPricingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? savings = freezed,
    Object? savingsText = freezed,
    Object? currency = null,
  }) {
    return _then(_$EventPricingImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      savings: freezed == savings
          ? _value.savings
          : savings // ignore: cast_nullable_to_non_nullable
              as double?,
      savingsText: freezed == savingsText
          ? _value.savingsText
          : savingsText // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventPricingImpl implements _EventPricing {
  const _$EventPricingImpl(
      {required this.label,
      required this.amount,
      this.savings,
      this.savingsText,
      this.currency = '€'});

  factory _$EventPricingImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventPricingImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;
  @override
  final double? savings;
  @override
  final String? savingsText;
  @override
  @JsonKey()
  final String currency;

  @override
  String toString() {
    return 'EventPricing(label: $label, amount: $amount, savings: $savings, savingsText: $savingsText, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPricingImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.savings, savings) || other.savings == savings) &&
            (identical(other.savingsText, savingsText) ||
                other.savingsText == savingsText) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, amount, savings, savingsText, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventPricingImplCopyWith<_$EventPricingImpl> get copyWith =>
      __$$EventPricingImplCopyWithImpl<_$EventPricingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventPricingImplToJson(
      this,
    );
  }
}

abstract class _EventPricing implements EventPricing {
  const factory _EventPricing(
      {required final String label,
      required final double amount,
      final double? savings,
      final String? savingsText,
      final String currency}) = _$EventPricingImpl;

  factory _EventPricing.fromJson(Map<String, dynamic> json) =
      _$EventPricingImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;
  @override
  double? get savings;
  @override
  String? get savingsText;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$EventPricingImplCopyWith<_$EventPricingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
