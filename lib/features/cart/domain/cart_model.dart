import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

/// Cart item — wraps an event with quantity and options.
@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required String eventId,
    required String eventName,
    required String eventDate,
    required String eventLocation,
    String? eventImageUrl,
    required double unitPrice,
    @Default(1) int quantity,
    @Default('standard') String ticketType,
    String? transportOption,
    double? transportPrice,
    String? accommodationOption,
    double? accommodationPrice,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}

/// Extension for computed total.
extension CartItemX on CartItem {
  double get totalPrice {
    var total = unitPrice * quantity;
    if (transportPrice != null) total += transportPrice!;
    if (accommodationPrice != null) total += accommodationPrice!;
    return total;
  }
}
