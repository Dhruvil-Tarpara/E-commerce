// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'card.freezed.dart';
part 'card.g.dart';

Card cardFromJson(String str) => Card.fromJson(json.decode(str));

String cardToJson(Card data) => json.encode(data.toJson());

@freezed
class Card with _$Card {
  const factory Card({
    String? object,
    List<Data>? data,
    bool? hasMore,
    String? url,
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? object,
    BillingDetails? billingDetails,
    CardClass? card,
    int? created,
    String? customer,
    bool? livemode,
    Metadata? metadata,
    String? type,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class BillingDetails with _$BillingDetails {
  const factory BillingDetails({
    Address? address,
    dynamic email,
    dynamic name,
    dynamic phone,
  }) = _BillingDetails;

  factory BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailsFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    dynamic city,
    dynamic country,
    dynamic line1,
    dynamic line2,
    dynamic postalCode,
    dynamic state,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class CardClass with _$CardClass {
  const factory CardClass({
    String? brand,
    Checks? checks,
    String? country,
    int? expMonth,
    int? expYear,
    String? fingerprint,
    String? funding,
    dynamic generatedFrom,
    String? last4,
    Networks? networks,
    ThreeDSecureUsage? threeDSecureUsage,
    dynamic wallet,
  }) = _CardClass;

  factory CardClass.fromJson(Map<String, dynamic> json) =>
      _$CardClassFromJson(json);
}

@freezed
class Checks with _$Checks {
  const factory Checks({
    dynamic addressLine1Check,
    dynamic addressPostalCodeCheck,
    String? cvcCheck,
  }) = _Checks;

  factory Checks.fromJson(Map<String, dynamic> json) => _$ChecksFromJson(json);
}

@freezed
class Networks with _$Networks {
  const factory Networks({
    List<String>? available,
    dynamic preferred,
  }) = _Networks;

  factory Networks.fromJson(Map<String, dynamic> json) =>
      _$NetworksFromJson(json);
}

@freezed
class ThreeDSecureUsage with _$ThreeDSecureUsage {
  const factory ThreeDSecureUsage({
    bool? supported,
  }) = _ThreeDSecureUsage;

  factory ThreeDSecureUsage.fromJson(Map<String, dynamic> json) =>
      _$ThreeDSecureUsageFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata() = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
