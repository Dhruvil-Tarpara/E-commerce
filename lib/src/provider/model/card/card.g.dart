// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$$_CardFromJson(Map<String, dynamic> json) => _$_Card(
      object: json['object'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CardToJson(_$_Card instance) => <String, dynamic>{
      'object': instance.object,
      'data': instance.data,
      'hasMore': instance.hasMore,
      'url': instance.url,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as String?,
      object: json['object'] as String?,
      billingDetails: json['billingDetails'] == null
          ? null
          : BillingDetails.fromJson(
              json['billingDetails'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : CardClass.fromJson(json['card'] as Map<String, dynamic>),
      created: json['created'] as int?,
      customer: json['customer'] as String?,
      livemode: json['livemode'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'billingDetails': instance.billingDetails,
      'card': instance.card,
      'created': instance.created,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'type': instance.type,
    };

_$_BillingDetails _$$_BillingDetailsFromJson(Map<String, dynamic> json) =>
    _$_BillingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
    );

Map<String, dynamic> _$$_BillingDetailsToJson(_$_BillingDetails instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
    };

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      city: json['city'],
      country: json['country'],
      line1: json['line1'],
      line2: json['line2'],
      postalCode: json['postalCode'],
      state: json['state'],
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

_$_CardClass _$$_CardClassFromJson(Map<String, dynamic> json) => _$_CardClass(
      brand: json['brand'] as String?,
      checks: json['checks'] == null
          ? null
          : Checks.fromJson(json['checks'] as Map<String, dynamic>),
      country: json['country'] as String?,
      expMonth: json['expMonth'] as int?,
      expYear: json['expYear'] as int?,
      fingerprint: json['fingerprint'] as String?,
      funding: json['funding'] as String?,
      generatedFrom: json['generatedFrom'],
      last4: json['last4'] as String?,
      networks: json['networks'] == null
          ? null
          : Networks.fromJson(json['networks'] as Map<String, dynamic>),
      threeDSecureUsage: json['threeDSecureUsage'] == null
          ? null
          : ThreeDSecureUsage.fromJson(
              json['threeDSecureUsage'] as Map<String, dynamic>),
      wallet: json['wallet'],
    );

Map<String, dynamic> _$$_CardClassToJson(_$_CardClass instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'checks': instance.checks,
      'country': instance.country,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'generatedFrom': instance.generatedFrom,
      'last4': instance.last4,
      'networks': instance.networks,
      'threeDSecureUsage': instance.threeDSecureUsage,
      'wallet': instance.wallet,
    };

_$_Checks _$$_ChecksFromJson(Map<String, dynamic> json) => _$_Checks(
      addressLine1Check: json['addressLine1Check'],
      addressPostalCodeCheck: json['addressPostalCodeCheck'],
      cvcCheck: json['cvcCheck'] as String?,
    );

Map<String, dynamic> _$$_ChecksToJson(_$_Checks instance) => <String, dynamic>{
      'addressLine1Check': instance.addressLine1Check,
      'addressPostalCodeCheck': instance.addressPostalCodeCheck,
      'cvcCheck': instance.cvcCheck,
    };

_$_Networks _$$_NetworksFromJson(Map<String, dynamic> json) => _$_Networks(
      available: (json['available'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferred: json['preferred'],
    );

Map<String, dynamic> _$$_NetworksToJson(_$_Networks instance) =>
    <String, dynamic>{
      'available': instance.available,
      'preferred': instance.preferred,
    };

_$_ThreeDSecureUsage _$$_ThreeDSecureUsageFromJson(Map<String, dynamic> json) =>
    _$_ThreeDSecureUsage(
      supported: json['supported'] as bool?,
    );

Map<String, dynamic> _$$_ThreeDSecureUsageToJson(
        _$_ThreeDSecureUsage instance) =>
    <String, dynamic>{
      'supported': instance.supported,
    };

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata();

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{};
