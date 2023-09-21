// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer.freezed.dart';
part 'customer.g.dart';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

String customerToJson(Customer data) => json.encode(data.toJson());

@freezed
class Customer with _$Customer {
    const factory Customer({
        String? id,
        String? object,
        Address? address,
        int? balance,
        int? created,
        dynamic currency,
        dynamic defaultSource,
        bool? delinquent,
        dynamic description,
        dynamic discount,
        dynamic email,
        String? invoicePrefix,
        InvoiceSettings? invoiceSettings,
        bool? livemode,
        Metadata? metadata,
        String? name,
        int? nextInvoiceSequence,
        dynamic phone,
        List<dynamic>? preferredLocales,
        dynamic shipping,
        String? taxExempt,
        dynamic testClock,
    }) = _Customer;

    factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
class Address with _$Address {
    const factory Address({
        String? city,
        String? country,
        String? line1,
        dynamic line2,
        String? postalCode,
        String? state,
    }) = _Address;

    factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class InvoiceSettings with _$InvoiceSettings {
    const factory InvoiceSettings({
        dynamic customFields,
        dynamic defaultPaymentMethod,
        dynamic footer,
        dynamic renderingOptions,
    }) = _InvoiceSettings;

    factory InvoiceSettings.fromJson(Map<String, dynamic> json) => _$InvoiceSettingsFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}
