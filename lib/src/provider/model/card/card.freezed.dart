// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String? get object => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call({String? object, List<Data>? data, bool? hasMore, String? url});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$_CardCopyWith(_$_Card value, $Res Function(_$_Card) then) =
      __$$_CardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? object, List<Data>? data, bool? hasMore, String? url});
}

/// @nodoc
class __$$_CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res, _$_Card>
    implements _$$_CardCopyWith<$Res> {
  __$$_CardCopyWithImpl(_$_Card _value, $Res Function(_$_Card) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = freezed,
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Card(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Card implements _Card {
  const _$_Card({this.object, final List<Data>? data, this.hasMore, this.url})
      : _data = data;

  factory _$_Card.fromJson(Map<String, dynamic> json) => _$$_CardFromJson(json);

  @override
  final String? object;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? hasMore;
  @override
  final String? url;

  @override
  String toString() {
    return 'Card(object: $object, data: $data, hasMore: $hasMore, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Card &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object,
      const DeepCollectionEquality().hash(_data), hasMore, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardCopyWith<_$_Card> get copyWith =>
      __$$_CardCopyWithImpl<_$_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {final String? object,
      final List<Data>? data,
      final bool? hasMore,
      final String? url}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  String? get object;
  @override
  List<Data>? get data;
  @override
  bool? get hasMore;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_CardCopyWith<_$_Card> get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  BillingDetails? get billingDetails => throw _privateConstructorUsedError;
  CardClass? get card => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get customer => throw _privateConstructorUsedError;
  bool? get livemode => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? id,
      String? object,
      BillingDetails? billingDetails,
      CardClass? card,
      int? created,
      String? customer,
      bool? livemode,
      Metadata? metadata,
      String? type});

  $BillingDetailsCopyWith<$Res>? get billingDetails;
  $CardClassCopyWith<$Res>? get card;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? type = freezed,
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
      billingDetails: freezed == billingDetails
          ? _value.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardClass?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingDetailsCopyWith<$Res>? get billingDetails {
    if (_value.billingDetails == null) {
      return null;
    }

    return $BillingDetailsCopyWith<$Res>(_value.billingDetails!, (value) {
      return _then(_value.copyWith(billingDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardClassCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $CardClassCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value) as $Val);
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? object,
      BillingDetails? billingDetails,
      CardClass? card,
      int? created,
      String? customer,
      bool? livemode,
      Metadata? metadata,
      String? type});

  @override
  $BillingDetailsCopyWith<$Res>? get billingDetails;
  @override
  $CardClassCopyWith<$Res>? get card;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Data(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      billingDetails: freezed == billingDetails
          ? _value.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardClass?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.id,
      this.object,
      this.billingDetails,
      this.card,
      this.created,
      this.customer,
      this.livemode,
      this.metadata,
      this.type});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final BillingDetails? billingDetails;
  @override
  final CardClass? card;
  @override
  final int? created;
  @override
  final String? customer;
  @override
  final bool? livemode;
  @override
  final Metadata? metadata;
  @override
  final String? type;

  @override
  String toString() {
    return 'Data(id: $id, object: $object, billingDetails: $billingDetails, card: $card, created: $created, customer: $customer, livemode: $livemode, metadata: $metadata, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.billingDetails, billingDetails) ||
                other.billingDetails == billingDetails) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, billingDetails, card,
      created, customer, livemode, metadata, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? id,
      final String? object,
      final BillingDetails? billingDetails,
      final CardClass? card,
      final int? created,
      final String? customer,
      final bool? livemode,
      final Metadata? metadata,
      final String? type}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  BillingDetails? get billingDetails;
  @override
  CardClass? get card;
  @override
  int? get created;
  @override
  String? get customer;
  @override
  bool? get livemode;
  @override
  Metadata? get metadata;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) {
  return _BillingDetails.fromJson(json);
}

/// @nodoc
mixin _$BillingDetails {
  Address? get address => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingDetailsCopyWith<BillingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingDetailsCopyWith<$Res> {
  factory $BillingDetailsCopyWith(
          BillingDetails value, $Res Function(BillingDetails) then) =
      _$BillingDetailsCopyWithImpl<$Res, BillingDetails>;
  @useResult
  $Res call({Address? address, dynamic email, dynamic name, dynamic phone});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$BillingDetailsCopyWithImpl<$Res, $Val extends BillingDetails>
    implements $BillingDetailsCopyWith<$Res> {
  _$BillingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_BillingDetailsCopyWith<$Res>
    implements $BillingDetailsCopyWith<$Res> {
  factory _$$_BillingDetailsCopyWith(
          _$_BillingDetails value, $Res Function(_$_BillingDetails) then) =
      __$$_BillingDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address? address, dynamic email, dynamic name, dynamic phone});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_BillingDetailsCopyWithImpl<$Res>
    extends _$BillingDetailsCopyWithImpl<$Res, _$_BillingDetails>
    implements _$$_BillingDetailsCopyWith<$Res> {
  __$$_BillingDetailsCopyWithImpl(
      _$_BillingDetails _value, $Res Function(_$_BillingDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_BillingDetails(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillingDetails implements _BillingDetails {
  const _$_BillingDetails({this.address, this.email, this.name, this.phone});

  factory _$_BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$$_BillingDetailsFromJson(json);

  @override
  final Address? address;
  @override
  final dynamic email;
  @override
  final dynamic name;
  @override
  final dynamic phone;

  @override
  String toString() {
    return 'BillingDetails(address: $address, email: $email, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillingDetails &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillingDetailsCopyWith<_$_BillingDetails> get copyWith =>
      __$$_BillingDetailsCopyWithImpl<_$_BillingDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingDetailsToJson(
      this,
    );
  }
}

abstract class _BillingDetails implements BillingDetails {
  const factory _BillingDetails(
      {final Address? address,
      final dynamic email,
      final dynamic name,
      final dynamic phone}) = _$_BillingDetails;

  factory _BillingDetails.fromJson(Map<String, dynamic> json) =
      _$_BillingDetails.fromJson;

  @override
  Address? get address;
  @override
  dynamic get email;
  @override
  dynamic get name;
  @override
  dynamic get phone;
  @override
  @JsonKey(ignore: true)
  _$$_BillingDetailsCopyWith<_$_BillingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  dynamic get city => throw _privateConstructorUsedError;
  dynamic get country => throw _privateConstructorUsedError;
  dynamic get line1 => throw _privateConstructorUsedError;
  dynamic get line2 => throw _privateConstructorUsedError;
  dynamic get postalCode => throw _privateConstructorUsedError;
  dynamic get state => throw _privateConstructorUsedError;

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
      {dynamic city,
      dynamic country,
      dynamic line1,
      dynamic line2,
      dynamic postalCode,
      dynamic state});
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
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {dynamic city,
      dynamic country,
      dynamic line1,
      dynamic line2,
      dynamic postalCode,
      dynamic state});
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
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  final dynamic city;
  @override
  final dynamic country;
  @override
  final dynamic line1;
  @override
  final dynamic line2;
  @override
  final dynamic postalCode;
  @override
  final dynamic state;

  @override
  String toString() {
    return 'Address(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.line1, line1) &&
            const DeepCollectionEquality().equals(other.line2, line2) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(line1),
      const DeepCollectionEquality().hash(line2),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(state));

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
      {final dynamic city,
      final dynamic country,
      final dynamic line1,
      final dynamic line2,
      final dynamic postalCode,
      final dynamic state}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  dynamic get city;
  @override
  dynamic get country;
  @override
  dynamic get line1;
  @override
  dynamic get line2;
  @override
  dynamic get postalCode;
  @override
  dynamic get state;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

CardClass _$CardClassFromJson(Map<String, dynamic> json) {
  return _CardClass.fromJson(json);
}

/// @nodoc
mixin _$CardClass {
  String? get brand => throw _privateConstructorUsedError;
  Checks? get checks => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get expMonth => throw _privateConstructorUsedError;
  int? get expYear => throw _privateConstructorUsedError;
  String? get fingerprint => throw _privateConstructorUsedError;
  String? get funding => throw _privateConstructorUsedError;
  dynamic get generatedFrom => throw _privateConstructorUsedError;
  String? get last4 => throw _privateConstructorUsedError;
  Networks? get networks => throw _privateConstructorUsedError;
  ThreeDSecureUsage? get threeDSecureUsage =>
      throw _privateConstructorUsedError;
  dynamic get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardClassCopyWith<CardClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardClassCopyWith<$Res> {
  factory $CardClassCopyWith(CardClass value, $Res Function(CardClass) then) =
      _$CardClassCopyWithImpl<$Res, CardClass>;
  @useResult
  $Res call(
      {String? brand,
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
      dynamic wallet});

  $ChecksCopyWith<$Res>? get checks;
  $NetworksCopyWith<$Res>? get networks;
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class _$CardClassCopyWithImpl<$Res, $Val extends CardClass>
    implements $CardClassCopyWith<$Res> {
  _$CardClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _value.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _value.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecksCopyWith<$Res>? get checks {
    if (_value.checks == null) {
      return null;
    }

    return $ChecksCopyWith<$Res>(_value.checks!, (value) {
      return _then(_value.copyWith(checks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworksCopyWith<$Res>? get networks {
    if (_value.networks == null) {
      return null;
    }

    return $NetworksCopyWith<$Res>(_value.networks!, (value) {
      return _then(_value.copyWith(networks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage {
    if (_value.threeDSecureUsage == null) {
      return null;
    }

    return $ThreeDSecureUsageCopyWith<$Res>(_value.threeDSecureUsage!, (value) {
      return _then(_value.copyWith(threeDSecureUsage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CardClassCopyWith<$Res> implements $CardClassCopyWith<$Res> {
  factory _$$_CardClassCopyWith(
          _$_CardClass value, $Res Function(_$_CardClass) then) =
      __$$_CardClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
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
      dynamic wallet});

  @override
  $ChecksCopyWith<$Res>? get checks;
  @override
  $NetworksCopyWith<$Res>? get networks;
  @override
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class __$$_CardClassCopyWithImpl<$Res>
    extends _$CardClassCopyWithImpl<$Res, _$_CardClass>
    implements _$$_CardClassCopyWith<$Res> {
  __$$_CardClassCopyWithImpl(
      _$_CardClass _value, $Res Function(_$_CardClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$_CardClass(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _value.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _value.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardClass implements _CardClass {
  const _$_CardClass(
      {this.brand,
      this.checks,
      this.country,
      this.expMonth,
      this.expYear,
      this.fingerprint,
      this.funding,
      this.generatedFrom,
      this.last4,
      this.networks,
      this.threeDSecureUsage,
      this.wallet});

  factory _$_CardClass.fromJson(Map<String, dynamic> json) =>
      _$$_CardClassFromJson(json);

  @override
  final String? brand;
  @override
  final Checks? checks;
  @override
  final String? country;
  @override
  final int? expMonth;
  @override
  final int? expYear;
  @override
  final String? fingerprint;
  @override
  final String? funding;
  @override
  final dynamic generatedFrom;
  @override
  final String? last4;
  @override
  final Networks? networks;
  @override
  final ThreeDSecureUsage? threeDSecureUsage;
  @override
  final dynamic wallet;

  @override
  String toString() {
    return 'CardClass(brand: $brand, checks: $checks, country: $country, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedFrom: $generatedFrom, last4: $last4, networks: $networks, threeDSecureUsage: $threeDSecureUsage, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardClass &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.checks, checks) || other.checks == checks) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            const DeepCollectionEquality()
                .equals(other.generatedFrom, generatedFrom) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.networks, networks) ||
                other.networks == networks) &&
            (identical(other.threeDSecureUsage, threeDSecureUsage) ||
                other.threeDSecureUsage == threeDSecureUsage) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      checks,
      country,
      expMonth,
      expYear,
      fingerprint,
      funding,
      const DeepCollectionEquality().hash(generatedFrom),
      last4,
      networks,
      threeDSecureUsage,
      const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardClassCopyWith<_$_CardClass> get copyWith =>
      __$$_CardClassCopyWithImpl<_$_CardClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardClassToJson(
      this,
    );
  }
}

abstract class _CardClass implements CardClass {
  const factory _CardClass(
      {final String? brand,
      final Checks? checks,
      final String? country,
      final int? expMonth,
      final int? expYear,
      final String? fingerprint,
      final String? funding,
      final dynamic generatedFrom,
      final String? last4,
      final Networks? networks,
      final ThreeDSecureUsage? threeDSecureUsage,
      final dynamic wallet}) = _$_CardClass;

  factory _CardClass.fromJson(Map<String, dynamic> json) =
      _$_CardClass.fromJson;

  @override
  String? get brand;
  @override
  Checks? get checks;
  @override
  String? get country;
  @override
  int? get expMonth;
  @override
  int? get expYear;
  @override
  String? get fingerprint;
  @override
  String? get funding;
  @override
  dynamic get generatedFrom;
  @override
  String? get last4;
  @override
  Networks? get networks;
  @override
  ThreeDSecureUsage? get threeDSecureUsage;
  @override
  dynamic get wallet;
  @override
  @JsonKey(ignore: true)
  _$$_CardClassCopyWith<_$_CardClass> get copyWith =>
      throw _privateConstructorUsedError;
}

Checks _$ChecksFromJson(Map<String, dynamic> json) {
  return _Checks.fromJson(json);
}

/// @nodoc
mixin _$Checks {
  dynamic get addressLine1Check => throw _privateConstructorUsedError;
  dynamic get addressPostalCodeCheck => throw _privateConstructorUsedError;
  String? get cvcCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecksCopyWith<Checks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecksCopyWith<$Res> {
  factory $ChecksCopyWith(Checks value, $Res Function(Checks) then) =
      _$ChecksCopyWithImpl<$Res, Checks>;
  @useResult
  $Res call(
      {dynamic addressLine1Check,
      dynamic addressPostalCodeCheck,
      String? cvcCheck});
}

/// @nodoc
class _$ChecksCopyWithImpl<$Res, $Val extends Checks>
    implements $ChecksCopyWith<$Res> {
  _$ChecksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _value.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChecksCopyWith<$Res> implements $ChecksCopyWith<$Res> {
  factory _$$_ChecksCopyWith(_$_Checks value, $Res Function(_$_Checks) then) =
      __$$_ChecksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic addressLine1Check,
      dynamic addressPostalCodeCheck,
      String? cvcCheck});
}

/// @nodoc
class __$$_ChecksCopyWithImpl<$Res>
    extends _$ChecksCopyWithImpl<$Res, _$_Checks>
    implements _$$_ChecksCopyWith<$Res> {
  __$$_ChecksCopyWithImpl(_$_Checks _value, $Res Function(_$_Checks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_$_Checks(
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _value.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Checks implements _Checks {
  const _$_Checks(
      {this.addressLine1Check, this.addressPostalCodeCheck, this.cvcCheck});

  factory _$_Checks.fromJson(Map<String, dynamic> json) =>
      _$$_ChecksFromJson(json);

  @override
  final dynamic addressLine1Check;
  @override
  final dynamic addressPostalCodeCheck;
  @override
  final String? cvcCheck;

  @override
  String toString() {
    return 'Checks(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, cvcCheck: $cvcCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Checks &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressPostalCodeCheck, addressPostalCodeCheck) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressLine1Check),
      const DeepCollectionEquality().hash(addressPostalCodeCheck),
      cvcCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChecksCopyWith<_$_Checks> get copyWith =>
      __$$_ChecksCopyWithImpl<_$_Checks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChecksToJson(
      this,
    );
  }
}

abstract class _Checks implements Checks {
  const factory _Checks(
      {final dynamic addressLine1Check,
      final dynamic addressPostalCodeCheck,
      final String? cvcCheck}) = _$_Checks;

  factory _Checks.fromJson(Map<String, dynamic> json) = _$_Checks.fromJson;

  @override
  dynamic get addressLine1Check;
  @override
  dynamic get addressPostalCodeCheck;
  @override
  String? get cvcCheck;
  @override
  @JsonKey(ignore: true)
  _$$_ChecksCopyWith<_$_Checks> get copyWith =>
      throw _privateConstructorUsedError;
}

Networks _$NetworksFromJson(Map<String, dynamic> json) {
  return _Networks.fromJson(json);
}

/// @nodoc
mixin _$Networks {
  List<String>? get available => throw _privateConstructorUsedError;
  dynamic get preferred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworksCopyWith<Networks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworksCopyWith<$Res> {
  factory $NetworksCopyWith(Networks value, $Res Function(Networks) then) =
      _$NetworksCopyWithImpl<$Res, Networks>;
  @useResult
  $Res call({List<String>? available, dynamic preferred});
}

/// @nodoc
class _$NetworksCopyWithImpl<$Res, $Val extends Networks>
    implements $NetworksCopyWith<$Res> {
  _$NetworksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworksCopyWith<$Res> implements $NetworksCopyWith<$Res> {
  factory _$$_NetworksCopyWith(
          _$_Networks value, $Res Function(_$_Networks) then) =
      __$$_NetworksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? available, dynamic preferred});
}

/// @nodoc
class __$$_NetworksCopyWithImpl<$Res>
    extends _$NetworksCopyWithImpl<$Res, _$_Networks>
    implements _$$_NetworksCopyWith<$Res> {
  __$$_NetworksCopyWithImpl(
      _$_Networks _value, $Res Function(_$_Networks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_$_Networks(
      available: freezed == available
          ? _value._available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Networks implements _Networks {
  const _$_Networks({final List<String>? available, this.preferred})
      : _available = available;

  factory _$_Networks.fromJson(Map<String, dynamic> json) =>
      _$$_NetworksFromJson(json);

  final List<String>? _available;
  @override
  List<String>? get available {
    final value = _available;
    if (value == null) return null;
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic preferred;

  @override
  String toString() {
    return 'Networks(available: $available, preferred: $preferred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Networks &&
            const DeepCollectionEquality()
                .equals(other._available, _available) &&
            const DeepCollectionEquality().equals(other.preferred, preferred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_available),
      const DeepCollectionEquality().hash(preferred));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworksCopyWith<_$_Networks> get copyWith =>
      __$$_NetworksCopyWithImpl<_$_Networks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworksToJson(
      this,
    );
  }
}

abstract class _Networks implements Networks {
  const factory _Networks(
      {final List<String>? available, final dynamic preferred}) = _$_Networks;

  factory _Networks.fromJson(Map<String, dynamic> json) = _$_Networks.fromJson;

  @override
  List<String>? get available;
  @override
  dynamic get preferred;
  @override
  @JsonKey(ignore: true)
  _$$_NetworksCopyWith<_$_Networks> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreeDSecureUsage _$ThreeDSecureUsageFromJson(Map<String, dynamic> json) {
  return _ThreeDSecureUsage.fromJson(json);
}

/// @nodoc
mixin _$ThreeDSecureUsage {
  bool? get supported => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreeDSecureUsageCopyWith<ThreeDSecureUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreeDSecureUsageCopyWith<$Res> {
  factory $ThreeDSecureUsageCopyWith(
          ThreeDSecureUsage value, $Res Function(ThreeDSecureUsage) then) =
      _$ThreeDSecureUsageCopyWithImpl<$Res, ThreeDSecureUsage>;
  @useResult
  $Res call({bool? supported});
}

/// @nodoc
class _$ThreeDSecureUsageCopyWithImpl<$Res, $Val extends ThreeDSecureUsage>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  _$ThreeDSecureUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_value.copyWith(
      supported: freezed == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThreeDSecureUsageCopyWith<$Res>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  factory _$$_ThreeDSecureUsageCopyWith(_$_ThreeDSecureUsage value,
          $Res Function(_$_ThreeDSecureUsage) then) =
      __$$_ThreeDSecureUsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? supported});
}

/// @nodoc
class __$$_ThreeDSecureUsageCopyWithImpl<$Res>
    extends _$ThreeDSecureUsageCopyWithImpl<$Res, _$_ThreeDSecureUsage>
    implements _$$_ThreeDSecureUsageCopyWith<$Res> {
  __$$_ThreeDSecureUsageCopyWithImpl(
      _$_ThreeDSecureUsage _value, $Res Function(_$_ThreeDSecureUsage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_$_ThreeDSecureUsage(
      supported: freezed == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThreeDSecureUsage implements _ThreeDSecureUsage {
  const _$_ThreeDSecureUsage({this.supported});

  factory _$_ThreeDSecureUsage.fromJson(Map<String, dynamic> json) =>
      _$$_ThreeDSecureUsageFromJson(json);

  @override
  final bool? supported;

  @override
  String toString() {
    return 'ThreeDSecureUsage(supported: $supported)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThreeDSecureUsage &&
            (identical(other.supported, supported) ||
                other.supported == supported));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, supported);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThreeDSecureUsageCopyWith<_$_ThreeDSecureUsage> get copyWith =>
      __$$_ThreeDSecureUsageCopyWithImpl<_$_ThreeDSecureUsage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThreeDSecureUsageToJson(
      this,
    );
  }
}

abstract class _ThreeDSecureUsage implements ThreeDSecureUsage {
  const factory _ThreeDSecureUsage({final bool? supported}) =
      _$_ThreeDSecureUsage;

  factory _ThreeDSecureUsage.fromJson(Map<String, dynamic> json) =
      _$_ThreeDSecureUsage.fromJson;

  @override
  bool? get supported;
  @override
  @JsonKey(ignore: true)
  _$$_ThreeDSecureUsageCopyWith<_$_ThreeDSecureUsage> get copyWith =>
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
