import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

/// Represents a purchased ticket with QR code and status.
@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required String id,
    required String eventId,
    required String eventName,
    required String eventDate,
    required String eventLocation,
    String? eventImageUrl,
    required double price,
    required String ticketType,
    @Default(TicketStatus.confirmed) TicketStatus status,
    required DateTime purchaseDate,
    String? qrCodeData,
    String? seatInfo,
    String? transferredToEmail,
    DateTime? cancelledAt,
    double? refundAmount,
    DateTime? eventDateParsed,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}

extension TicketModelX on TicketModel {
  bool get isActive => status == TicketStatus.confirmed;
  bool get isExpired => eventDateParsed != null &&
      eventDateParsed!.isBefore(DateTime.now().subtract(const Duration(days: 1)));

  int? get daysUntilEvent {
    if (eventDateParsed == null) return null;
    final diff = eventDateParsed!.difference(DateTime.now());
    return diff.inDays;
  }

  String get timeUntil {
    final d = daysUntilEvent;
    if (d == null) return '';
    if (d < 0) return 'Terminé';
    if (d == 0) return "Aujourd'hui";
    if (d == 1) return 'Demain';
    if (d < 7) return 'Dans $d jours';
    if (d < 30) return 'Dans ${(d / 7).floor()} sem.';
    return 'Dans ${(d / 30).floor()} mois';
  }
}

enum TicketStatus {
  confirmed,
  used,
  cancelled,
  transferred,
  expired,
}
