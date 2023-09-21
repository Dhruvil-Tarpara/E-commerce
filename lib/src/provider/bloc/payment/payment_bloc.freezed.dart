// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateUserCopyWith<$Res> {
  factory _$$_CreateUserCopyWith(
          _$_CreateUser value, $Res Function(_$_CreateUser) then) =
      __$$_CreateUserCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic address});
}

/// @nodoc
class __$$_CreateUserCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_CreateUser>
    implements _$$_CreateUserCopyWith<$Res> {
  __$$_CreateUserCopyWithImpl(
      _$_CreateUser _value, $Res Function(_$_CreateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$_CreateUser(
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_CreateUser implements _CreateUser {
  const _$_CreateUser(this.address);

  @override
  final dynamic address;

  @override
  String toString() {
    return 'PaymentEvent.createUser(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUser &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
      __$$_CreateUserCopyWithImpl<_$_CreateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) {
    return createUser(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) {
    return createUser?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements PaymentEvent {
  const factory _CreateUser(final dynamic address) = _$_CreateUser;

  dynamic get address;
  @JsonKey(ignore: true)
  _$$_CreateUserCopyWith<_$_CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUserCopyWith<$Res> {
  factory _$$_GetUserCopyWith(
          _$_GetUser value, $Res Function(_$_GetUser) then) =
      __$$_GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_GetUser>
    implements _$$_GetUserCopyWith<$Res> {
  __$$_GetUserCopyWithImpl(_$_GetUser _value, $Res Function(_$_GetUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUser implements _GetUser {
  const _$_GetUser();

  @override
  String toString() {
    return 'PaymentEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements PaymentEvent {
  const factory _GetUser() = _$_GetUser;
}

/// @nodoc
abstract class _$$_CreateCardCopyWith<$Res> {
  factory _$$_CreateCardCopyWith(
          _$_CreateCard value, $Res Function(_$_CreateCard) then) =
      __$$_CreateCardCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardNumber, String expMonth, String expYear, String cvc});
}

/// @nodoc
class __$$_CreateCardCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_CreateCard>
    implements _$$_CreateCardCopyWith<$Res> {
  __$$_CreateCardCopyWithImpl(
      _$_CreateCard _value, $Res Function(_$_CreateCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? cvc = null,
  }) {
    return _then(_$_CreateCard(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateCard implements _CreateCard {
  const _$_CreateCard(
      {required this.cardNumber,
      required this.expMonth,
      required this.expYear,
      required this.cvc});

  @override
  final String cardNumber;
  @override
  final String expMonth;
  @override
  final String expYear;
  @override
  final String cvc;

  @override
  String toString() {
    return 'PaymentEvent.createCard(cardNumber: $cardNumber, expMonth: $expMonth, expYear: $expYear, cvc: $cvc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCard &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.cvc, cvc) || other.cvc == cvc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cardNumber, expMonth, expYear, cvc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCardCopyWith<_$_CreateCard> get copyWith =>
      __$$_CreateCardCopyWithImpl<_$_CreateCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) {
    return createCard(cardNumber, expMonth, expYear, cvc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) {
    return createCard?.call(cardNumber, expMonth, expYear, cvc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) {
    if (createCard != null) {
      return createCard(cardNumber, expMonth, expYear, cvc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) {
    return createCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) {
    return createCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) {
    if (createCard != null) {
      return createCard(this);
    }
    return orElse();
  }
}

abstract class _CreateCard implements PaymentEvent {
  const factory _CreateCard(
      {required final String cardNumber,
      required final String expMonth,
      required final String expYear,
      required final String cvc}) = _$_CreateCard;

  String get cardNumber;
  String get expMonth;
  String get expYear;
  String get cvc;
  @JsonKey(ignore: true)
  _$$_CreateCardCopyWith<_$_CreateCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCardCopyWith<$Res> {
  factory _$$_GetCardCopyWith(
          _$_GetCard value, $Res Function(_$_GetCard) then) =
      __$$_GetCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCardCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_GetCard>
    implements _$$_GetCardCopyWith<$Res> {
  __$$_GetCardCopyWithImpl(_$_GetCard _value, $Res Function(_$_GetCard) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCard implements _GetCard {
  const _$_GetCard();

  @override
  String toString() {
    return 'PaymentEvent.getCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) {
    return getCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) {
    return getCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) {
    if (getCard != null) {
      return getCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) {
    return getCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) {
    return getCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) {
    if (getCard != null) {
      return getCard(this);
    }
    return orElse();
  }
}

abstract class _GetCard implements PaymentEvent {
  const factory _GetCard() = _$_GetCard;
}

/// @nodoc
abstract class _$$_PayCopyWith<$Res> {
  factory _$$_PayCopyWith(_$_Pay value, $Res Function(_$_Pay) then) =
      __$$_PayCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String cardNumber,
      String expMonth,
      String expYear,
      String cvc,
      String amount,
      List<OrderProduct> order});
}

/// @nodoc
class __$$_PayCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$_Pay>
    implements _$$_PayCopyWith<$Res> {
  __$$_PayCopyWithImpl(_$_Pay _value, $Res Function(_$_Pay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? cvc = null,
    Object? amount = null,
    Object? order = null,
  }) {
    return _then(_$_Pay(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ));
  }
}

/// @nodoc

class _$_Pay implements _Pay {
  const _$_Pay(
      {required this.cardNumber,
      required this.expMonth,
      required this.expYear,
      required this.cvc,
      required this.amount,
      required final List<OrderProduct> order})
      : _order = order;

  @override
  final String cardNumber;
  @override
  final String expMonth;
  @override
  final String expYear;
  @override
  final String cvc;
  @override
  final String amount;
  final List<OrderProduct> _order;
  @override
  List<OrderProduct> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  String toString() {
    return 'PaymentEvent.pay(cardNumber: $cardNumber, expMonth: $expMonth, expYear: $expYear, cvc: $cvc, amount: $amount, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pay &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.cvc, cvc) || other.cvc == cvc) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, expMonth, expYear,
      cvc, amount, const DeepCollectionEquality().hash(_order));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayCopyWith<_$_Pay> get copyWith =>
      __$$_PayCopyWithImpl<_$_Pay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic address) createUser,
    required TResult Function() getUser,
    required TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)
        createCard,
    required TResult Function() getCard,
    required TResult Function(String cardNumber, String expMonth,
            String expYear, String cvc, String amount, List<OrderProduct> order)
        pay,
  }) {
    return pay(cardNumber, expMonth, expYear, cvc, amount, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic address)? createUser,
    TResult? Function()? getUser,
    TResult? Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult? Function()? getCard,
    TResult? Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
  }) {
    return pay?.call(cardNumber, expMonth, expYear, cvc, amount, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic address)? createUser,
    TResult Function()? getUser,
    TResult Function(
            String cardNumber, String expMonth, String expYear, String cvc)?
        createCard,
    TResult Function()? getCard,
    TResult Function(String cardNumber, String expMonth, String expYear,
            String cvc, String amount, List<OrderProduct> order)?
        pay,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(cardNumber, expMonth, expYear, cvc, amount, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_CreateCard value) createCard,
    required TResult Function(_GetCard value) getCard,
    required TResult Function(_Pay value) pay,
  }) {
    return pay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_CreateCard value)? createCard,
    TResult? Function(_GetCard value)? getCard,
    TResult? Function(_Pay value)? pay,
  }) {
    return pay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_CreateCard value)? createCard,
    TResult Function(_GetCard value)? getCard,
    TResult Function(_Pay value)? pay,
    required TResult orElse(),
  }) {
    if (pay != null) {
      return pay(this);
    }
    return orElse();
  }
}

abstract class _Pay implements PaymentEvent {
  const factory _Pay(
      {required final String cardNumber,
      required final String expMonth,
      required final String expYear,
      required final String cvc,
      required final String amount,
      required final List<OrderProduct> order}) = _$_Pay;

  String get cardNumber;
  String get expMonth;
  String get expYear;
  String get cvc;
  String get amount;
  List<OrderProduct> get order;
  @JsonKey(ignore: true)
  _$$_PayCopyWith<_$_Pay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function() success,
    required TResult Function(String massage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function()? success,
    TResult? Function(String massage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function()? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loding value) loding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loding value)? loding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loding value)? loding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PaymentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function() success,
    required TResult Function(String massage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function()? success,
    TResult? Function(String massage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function()? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loding value) loding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loding value)? loding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loding value)? loding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LodingCopyWith<$Res> {
  factory _$$_LodingCopyWith(_$_Loding value, $Res Function(_$_Loding) then) =
      __$$_LodingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LodingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Loding>
    implements _$$_LodingCopyWith<$Res> {
  __$$_LodingCopyWithImpl(_$_Loding _value, $Res Function(_$_Loding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loding implements _Loding {
  const _$_Loding();

  @override
  String toString() {
    return 'PaymentState.loding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function() success,
    required TResult Function(String massage) error,
  }) {
    return loding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function()? success,
    TResult? Function(String massage)? error,
  }) {
    return loding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function()? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loding value) loding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loding value)? loding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loding value)? loding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loding != null) {
      return loding(this);
    }
    return orElse();
  }
}

abstract class _Loding implements PaymentState {
  const factory _Loding() = _$_Loding;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'PaymentState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function() success,
    required TResult Function(String massage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function()? success,
    TResult? Function(String massage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function()? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loding value) loding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loding value)? loding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loding value)? loding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements PaymentState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String massage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massage = null,
  }) {
    return _then(_$_Error(
      null == massage
          ? _value.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.massage);

  @override
  final String massage;

  @override
  String toString() {
    return 'PaymentState.error(massage: $massage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, massage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function() success,
    required TResult Function(String massage) error,
  }) {
    return error(massage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function()? success,
    TResult? Function(String massage)? error,
  }) {
    return error?.call(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function()? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(massage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loding value) loding,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loding value)? loding,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loding value)? loding,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PaymentState {
  const factory _Error(final String massage) = _$_Error;

  String get massage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
