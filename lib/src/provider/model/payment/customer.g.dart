// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String?,
      object: json['object'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      balance: json['balance'] as int?,
      created: json['created'] as int?,
      currency: json['currency'],
      defaultSource: json['defaultSource'],
      delinquent: json['delinquent'] as bool?,
      description: json['description'],
      discount: json['discount'],
      email: json['email'],
      invoicePrefix: json['invoicePrefix'] as String?,
      invoiceSettings: json['invoiceSettings'] == null
          ? null
          : InvoiceSettings.fromJson(
              json['invoiceSettings'] as Map<String, dynamic>),
      livemode: json['livemode'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nextInvoiceSequence: json['nextInvoiceSequence'] as int?,
      phone: json['phone'],
      preferredLocales: json['preferredLocales'] as List<dynamic>?,
      shipping: json['shipping'],
      taxExempt: json['taxExempt'] as String?,
      testClock: json['testClock'],
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'address': instance.address,
      'balance': instance.balance,
      'created': instance.created,
      'currency': instance.currency,
      'defaultSource': instance.defaultSource,
      'delinquent': instance.delinquent,
      'description': instance.description,
      'discount': instance.discount,
      'email': instance.email,
      'invoicePrefix': instance.invoicePrefix,
      'invoiceSettings': instance.invoiceSettings,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'name': instance.name,
      'nextInvoiceSequence': instance.nextInvoiceSequence,
      'phone': instance.phone,
      'preferredLocales': instance.preferredLocales,
      'shipping': instance.shipping,
      'taxExempt': instance.taxExempt,
      'testClock': instance.testClock,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      city: json['city'] as String?,
      country: json['country'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'],
      postalCode: json['postalCode'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postalCode': instance.postalCode,
      'state': instance.state,
    };

_$_InvoiceSettings _$$_InvoiceSettingsFromJson(Map<String, dynamic> json) =>
    _$_InvoiceSettings(
      customFields: json['customFields'],
      defaultPaymentMethod: json['defaultPaymentMethod'],
      footer: json['footer'],
      renderingOptions: json['renderingOptions'],
    );

Map<String, dynamic> _$$_InvoiceSettingsToJson(_$_InvoiceSettings instance) =>
    <String, dynamic>{
      'customFields': instance.customFields,
      'defaultPaymentMethod': instance.defaultPaymentMethod,
      'footer': instance.footer,
      'renderingOptions': instance.renderingOptions,
    };

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => const _$_Metadata();

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{};
