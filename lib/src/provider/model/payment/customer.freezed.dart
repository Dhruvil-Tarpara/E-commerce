// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  dynamic get currency => throw _privateConstructorUsedError;
  dynamic get defaultSource => throw _privateConstructorUsedError;
  bool? get delinquent => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  String? get invoicePrefix => throw _privateConstructorUsedError;
  InvoiceSettings? get invoiceSettings => throw _privateConstructorUsedError;
  bool? get livemode => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get nextInvoiceSequence => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  List<dynamic>? get preferredLocales => throw _privateConstructorUsedError;
  dynamic get shipping => throw _privateConstructorUsedError;
  String? get taxExempt => throw _privateConstructorUsedError;
  dynamic get testClock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {String? id,
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
      dynamic testClock});

  $AddressCopyWith<$Res>? get address;
  $InvoiceSettingsCopyWith<$Res>? get invoiceSettings;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? address = freezed,
    Object? balance = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? defaultSource = freezed,
    Object? delinquent = freezed,
    Object? description = freezed,
    Object? discount = freezed,
    Object? email = freezed,
    Object? invoicePrefix = freezed,
    Object? invoiceSettings = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? nextInvoiceSequence = freezed,
    Object? phone = freezed,
    Object? preferredLocales = freezed,
    Object? shipping = freezed,
    Object? taxExempt = freezed,
    Object? testClock = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultSource: freezed == defaultSource
          ? _value.defaultSource
          : defaultSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delinquent: freezed == delinquent
          ? _value.delinquent
          : delinquent // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invoicePrefix: freezed == invoicePrefix
          ? _value.invoicePrefix
          : invoicePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceSettings: freezed == invoiceSettings
          ? _value.invoiceSettings
          : invoiceSettings // ignore: cast_nullable_to_non_nullable
              as InvoiceSettings?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextInvoiceSequence: freezed == nextInvoiceSequence
          ? _value.nextInvoiceSequence
          : nextInvoiceSequence // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferredLocales: freezed == preferredLocales
          ? _value.preferredLocales
          : preferredLocales // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxExempt: freezed == taxExempt
          ? _value.taxExempt
          : taxExempt // ignore: cast_nullable_to_non_nullable
              as String?,
      testClock: freezed == testClock
          ? _value.testClock
          : testClock // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceSettingsCopyWith<$Res>? get invoiceSettings {
    if (_value.invoiceSettings == null) {
      return null;
    }

    return $InvoiceSettingsCopyWith<$Res>(_value.invoiceSettings!, (value) {
      return _then(_value.copyWith(invoiceSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$$_CustomerCopyWith(
          _$_Customer value, $Res Function(_$_Customer) then) =
      __$$_CustomerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      dynamic testClock});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $InvoiceSettingsCopyWith<$Res>? get invoiceSettings;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$_CustomerCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$_Customer>
    implements _$$_CustomerCopyWith<$Res> {
  __$$_CustomerCopyWithImpl(
      _$_Customer _value, $Res Function(_$_Customer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? address = freezed,
    Object? balance = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? defaultSource = freezed,
    Object? delinquent = freezed,
    Object? description = freezed,
    Object? discount = freezed,
    Object? email = freezed,
    Object? invoicePrefix = freezed,
    Object? invoiceSettings = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? nextInvoiceSequence = freezed,
    Object? phone = freezed,
    Object? preferredLocales = freezed,
    Object? shipping = freezed,
    Object? taxExempt = freezed,
    Object? testClock = freezed,
  }) {
    return _then(_$_Customer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultSource: freezed == defaultSource
          ? _value.defaultSource
          : defaultSource // ignore: cast_nullable_to_non_nullable
              as dynamic,
      delinquent: freezed == delinquent
          ? _value.delinquent
          : delinquent // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      invoicePrefix: freezed == invoicePrefix
          ? _value.invoicePrefix
          : invoicePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceSettings: freezed == invoiceSettings
          ? _value.invoiceSettings
          : invoiceSettings // ignore: cast_nullable_to_non_nullable
              as InvoiceSettings?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextInvoiceSequence: freezed == nextInvoiceSequence
          ? _value.nextInvoiceSequence
          : nextInvoiceSequence // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      preferredLocales: freezed == preferredLocales
          ? _value._preferredLocales
          : preferredLocales // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as dynamic,
      taxExempt: freezed == taxExempt
          ? _value.taxExempt
          : taxExempt // ignore: cast_nullable_to_non_nullable
              as String?,
      testClock: freezed == testClock
          ? _value.testClock
          : testClock // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  const _$_Customer(
      {this.id,
      this.object,
      this.address,
      this.balance,
      this.created,
      this.currency,
      this.defaultSource,
      this.delinquent,
      this.description,
      this.discount,
      this.email,
      this.invoicePrefix,
      this.invoiceSettings,
      this.livemode,
      this.metadata,
      this.name,
      this.nextInvoiceSequence,
      this.phone,
      final List<dynamic>? preferredLocales,
      this.shipping,
      this.taxExempt,
      this.testClock})
      : _preferredLocales = preferredLocales;

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final Address? address;
  @override
  final int? balance;
  @override
  final int? created;
  @override
  final dynamic currency;
  @override
  final dynamic defaultSource;
  @override
  final bool? delinquent;
  @override
  final dynamic description;
  @override
  final dynamic discount;
  @override
  final dynamic email;
  @override
  final String? invoicePrefix;
  @override
  final InvoiceSettings? invoiceSettings;
  @override
  final bool? livemode;
  @override
  final Metadata? metadata;
  @override
  final String? name;
  @override
  final int? nextInvoiceSequence;
  @override
  final dynamic phone;
  final List<dynamic>? _preferredLocales;
  @override
  List<dynamic>? get preferredLocales {
    final value = _preferredLocales;
    if (value == null) return null;
    if (_preferredLocales is EqualUnmodifiableListView)
      return _preferredLocales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic shipping;
  @override
  final String? taxExempt;
  @override
  final dynamic testClock;

  @override
  String toString() {
    return 'Customer(id: $id, object: $object, address: $address, balance: $balance, created: $created, currency: $currency, defaultSource: $defaultSource, delinquent: $delinquent, description: $description, discount: $discount, email: $email, invoicePrefix: $invoicePrefix, invoiceSettings: $invoiceSettings, livemode: $livemode, metadata: $metadata, name: $name, nextInvoiceSequence: $nextInvoiceSequence, phone: $phone, preferredLocales: $preferredLocales, shipping: $shipping, taxExempt: $taxExempt, testClock: $testClock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.defaultSource, defaultSource) &&
            (identical(other.delinquent, delinquent) ||
                other.delinquent == delinquent) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            (identical(other.invoicePrefix, invoicePrefix) ||
                other.invoicePrefix == invoicePrefix) &&
            (identical(other.invoiceSettings, invoiceSettings) ||
                other.invoiceSettings == invoiceSettings) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nextInvoiceSequence, nextInvoiceSequence) ||
                other.nextInvoiceSequence == nextInvoiceSequence) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other._preferredLocales, _preferredLocales) &&
            const DeepCollectionEquality().equals(other.shipping, shipping) &&
            (identical(other.taxExempt, taxExempt) ||
                other.taxExempt == taxExempt) &&
            const DeepCollectionEquality().equals(other.testClock, testClock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        object,
        address,
        balance,
        created,
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(defaultSource),
        delinquent,
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(email),
        invoicePrefix,
        invoiceSettings,
        livemode,
        metadata,
        name,
        nextInvoiceSequence,
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(_preferredLocales),
        const DeepCollectionEquality().hash(shipping),
        taxExempt,
        const DeepCollectionEquality().hash(testClock)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      __$$_CustomerCopyWithImpl<_$_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final String? id,
      final String? object,
      final Address? address,
      final int? balance,
      final int? created,
      final dynamic currency,
      final dynamic defaultSource,
      final bool? delinquent,
      final dynamic description,
      final dynamic discount,
      final dynamic email,
      final String? invoicePrefix,
      final InvoiceSettings? invoiceSettings,
      final bool? livemode,
      final Metadata? metadata,
      final String? name,
      final int? nextInvoiceSequence,
      final dynamic phone,
      final List<dynamic>? preferredLocales,
      final dynamic shipping,
      final String? taxExempt,
      final dynamic testClock}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  Address? get address;
  @override
  int? get balance;
  @override
  int? get created;
  @override
  dynamic get currency;
  @override
  dynamic get defaultSource;
  @override
  bool? get delinquent;
  @override
  dynamic get description;
  @override
  dynamic get discount;
  @override
  dynamic get email;
  @override
  String? get invoicePrefix;
  @override
  InvoiceSettings? get invoiceSettings;
  @override
  bool? get livemode;
  @override
  Metadata? get metadata;
  @override
  String? get name;
  @override
  int? get nextInvoiceSequence;
  @override
  dynamic get phone;
  @override
  List<dynamic>? get preferredLocales;
  @override
  dynamic get shipping;
  @override
  String? get taxExempt;
  @override
  dynamic get testClock;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerCopyWith<_$_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get line1 => throw _privateConstructorUsedError;
  dynamic get line2 => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? line1,
      dynamic line2,
      String? postalCode,
      String? state});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? line1,
      dynamic line2,
      String? postalCode,
      String? state});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_Address(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as String?,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  const _$_Address(
      {this.city,
      this.country,
      this.line1,
      this.line2,
      this.postalCode,
      this.state});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? line1;
  @override
  final dynamic line2;
  @override
  final String? postalCode;
  @override
  final String? state;

  @override
  String toString() {
    return 'Address(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.line1, line1) || other.line1 == line1) &&
            const DeepCollectionEquality().equals(other.line2, line2) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, country, line1,
      const DeepCollectionEquality().hash(line2), postalCode, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final String? city,
      final String? country,
      final String? line1,
      final dynamic line2,
      final String? postalCode,
      final String? state}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get line1;
  @override
  dynamic get line2;
  @override
  String? get postalCode;
  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

InvoiceSettings _$InvoiceSettingsFromJson(Map<String, dynamic> json) {
  return _InvoiceSettings.fromJson(json);
}

/// @nodoc
mixin _$InvoiceSettings {
  dynamic get customFields => throw _privateConstructorUsedError;
  dynamic get defaultPaymentMethod => throw _privateConstructorUsedError;
  dynamic get footer => throw _privateConstructorUsedError;
  dynamic get renderingOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceSettingsCopyWith<InvoiceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceSettingsCopyWith<$Res> {
  factory $InvoiceSettingsCopyWith(
          InvoiceSettings value, $Res Function(InvoiceSettings) then) =
      _$InvoiceSettingsCopyWithImpl<$Res, InvoiceSettings>;
  @useResult
  $Res call(
      {dynamic customFields,
      dynamic defaultPaymentMethod,
      dynamic footer,
      dynamic renderingOptions});
}

/// @nodoc
class _$InvoiceSettingsCopyWithImpl<$Res, $Val extends InvoiceSettings>
    implements $InvoiceSettingsCopyWith<$Res> {
  _$InvoiceSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customFields = freezed,
    Object? defaultPaymentMethod = freezed,
    Object? footer = freezed,
    Object? renderingOptions = freezed,
  }) {
    return _then(_value.copyWith(
      customFields: freezed == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultPaymentMethod: freezed == defaultPaymentMethod
          ? _value.defaultPaymentMethod
          : defaultPaymentMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      renderingOptions: freezed == renderingOptions
          ? _value.renderingOptions
          : renderingOptions // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceSettingsCopyWith<$Res>
    implements $InvoiceSettingsCopyWith<$Res> {
  factory _$$_InvoiceSettingsCopyWith(
          _$_InvoiceSettings value, $Res Function(_$_InvoiceSettings) then) =
      __$$_InvoiceSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic customFields,
      dynamic defaultPaymentMethod,
      dynamic footer,
      dynamic renderingOptions});
}

/// @nodoc
class __$$_InvoiceSettingsCopyWithImpl<$Res>
    extends _$InvoiceSettingsCopyWithImpl<$Res, _$_InvoiceSettings>
    implements _$$_InvoiceSettingsCopyWith<$Res> {
  __$$_InvoiceSettingsCopyWithImpl(
      _$_InvoiceSettings _value, $Res Function(_$_InvoiceSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customFields = freezed,
    Object? defaultPaymentMethod = freezed,
    Object? footer = freezed,
    Object? renderingOptions = freezed,
  }) {
    return _then(_$_InvoiceSettings(
      customFields: freezed == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as dynamic,
      defaultPaymentMethod: freezed == defaultPaymentMethod
          ? _value.defaultPaymentMethod
          : defaultPaymentMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      renderingOptions: freezed == renderingOptions
          ? _value.renderingOptions
          : renderingOptions // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceSettings implements _InvoiceSettings {
  const _$_InvoiceSettings(
      {this.customFields,
      this.defaultPaymentMethod,
      this.footer,
      this.renderingOptions});

  factory _$_InvoiceSettings.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceSettingsFromJson(json);

  @override
  final dynamic customFields;
  @override
  final dynamic defaultPaymentMethod;
  @override
  final dynamic footer;
  @override
  final dynamic renderingOptions;

  @override
  String toString() {
    return 'InvoiceSettings(customFields: $customFields, defaultPaymentMethod: $defaultPaymentMethod, footer: $footer, renderingOptions: $renderingOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceSettings &&
            const DeepCollectionEquality()
                .equals(other.customFields, customFields) &&
            const DeepCollectionEquality()
                .equals(other.defaultPaymentMethod, defaultPaymentMethod) &&
            const DeepCollectionEquality().equals(other.footer, footer) &&
            const DeepCollectionEquality()
                .equals(other.renderingOptions, renderingOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customFields),
      const DeepCollectionEquality().hash(defaultPaymentMethod),
      const DeepCollectionEquality().hash(footer),
      const DeepCollectionEquality().hash(renderingOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceSettingsCopyWith<_$_InvoiceSettings> get copyWith =>
      __$$_InvoiceSettingsCopyWithImpl<_$_InvoiceSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceSettingsToJson(
      this,
    );
  }
}

abstract class _InvoiceSettings implements InvoiceSettings {
  const factory _InvoiceSettings(
      {final dynamic customFields,
      final dynamic defaultPaymentMethod,
      final dynamic footer,
      final dynamic renderingOptions}) = _$_InvoiceSettings;

  factory _InvoiceSettings.fromJson(Map<String, dynamic> json) =
      _$_InvoiceSettings.fromJson;

  @override
  dynamic get customFields;
  @override
  dynamic get defaultPaymentMethod;
  @override
  dynamic get footer;
  @override
  dynamic get renderingOptions;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceSettingsCopyWith<_$_InvoiceSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MetadataCopyWith<$Res> {
  factory _$$_MetadataCopyWith(
          _$_Metadata value, $Res Function(_$_Metadata) then) =
      __$$_MetadataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MetadataCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$_Metadata>
    implements _$$_MetadataCopyWith<$Res> {
  __$$_MetadataCopyWithImpl(
      _$_Metadata _value, $Res Function(_$_Metadata) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Metadata implements _Metadata {
  const _$_Metadata();

  factory _$_Metadata.fromJson(Map<String, dynamic> json) =>
      _$$_MetadataFromJson(json);

  @override
  String toString() {
    return 'Metadata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Metadata);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetadataToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata() = _$_Metadata;

  factory _Metadata.fromJson(Map<String, dynamic> json) = _$_Metadata.fromJson;
}
