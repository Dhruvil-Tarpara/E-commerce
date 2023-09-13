// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OrderEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Remove>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$_Remove(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Remove implements _Remove {
  const _$_Remove({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderEvent.remove(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Remove &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      __$$_RemoveCopyWithImpl<_$_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) {
    return remove(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) {
    return remove?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements OrderEvent {
  const factory _Remove({required final String orderId}) = _$_Remove;

  String get orderId;
  @JsonKey(ignore: true)
  _$$_RemoveCopyWith<_$_Remove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddOrderCopyWith<$Res> {
  factory _$$_AddOrderCopyWith(
          _$_AddOrder value, $Res Function(_$_AddOrder) then) =
      __$$_AddOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderProduct order});
}

/// @nodoc
class __$$_AddOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_AddOrder>
    implements _$$_AddOrderCopyWith<$Res> {
  __$$_AddOrderCopyWithImpl(
      _$_AddOrder _value, $Res Function(_$_AddOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$_AddOrder(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderProduct,
    ));
  }
}

/// @nodoc

class _$_AddOrder implements _AddOrder {
  const _$_AddOrder({required this.order});

  @override
  final OrderProduct order;

  @override
  String toString() {
    return 'OrderEvent.addOrder(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddOrder &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      __$$_AddOrderCopyWithImpl<_$_AddOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) {
    return addOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) {
    return addOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements OrderEvent {
  const factory _AddOrder({required final OrderProduct order}) = _$_AddOrder;

  OrderProduct get order;
  @JsonKey(ignore: true)
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'OrderEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements OrderEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({String filed, dynamic value, String orderId});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filed = null,
    Object? value = freezed,
    Object? orderId = null,
  }) {
    return _then(_$_Update(
      filed: null == filed
          ? _value.filed
          : filed // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(
      {required this.filed, required this.value, required this.orderId});

  @override
  final String filed;
  @override
  final dynamic value;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderEvent.update(filed: $filed, value: $value, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.filed, filed) || other.filed == filed) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, filed, const DeepCollectionEquality().hash(value), orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(String orderId) remove,
    required TResult Function(OrderProduct order) addOrder,
    required TResult Function() refresh,
    required TResult Function(String filed, dynamic value, String orderId)
        update,
  }) {
    return update(filed, value, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(String orderId)? remove,
    TResult? Function(OrderProduct order)? addOrder,
    TResult? Function()? refresh,
    TResult? Function(String filed, dynamic value, String orderId)? update,
  }) {
    return update?.call(filed, value, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(String orderId)? remove,
    TResult Function(OrderProduct order)? addOrder,
    TResult Function()? refresh,
    TResult Function(String filed, dynamic value, String orderId)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(filed, value, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getData,
    required TResult Function(_Remove value) remove,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getData,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getData,
    TResult Function(_Remove value)? remove,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements OrderEvent {
  const factory _Update(
      {required final String filed,
      required final dynamic value,
      required final String orderId}) = _$_Update;

  String get filed;
  dynamic get value;
  String get orderId;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<OrderProduct> data) success,
    required TResult Function(String massage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<OrderProduct> data)? success,
    TResult? Function(String massage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<OrderProduct> data)? success,
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
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
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
    required TResult Function(List<OrderProduct> data) success,
    required TResult Function(String massage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<OrderProduct> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<OrderProduct> data)? success,
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

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LodingCopyWith<$Res> {
  factory _$$_LodingCopyWith(_$_Loding value, $Res Function(_$_Loding) then) =
      __$$_LodingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LodingCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Loding>
    implements _$$_LodingCopyWith<$Res> {
  __$$_LodingCopyWithImpl(_$_Loding _value, $Res Function(_$_Loding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loding implements _Loding {
  const _$_Loding();

  @override
  String toString() {
    return 'OrderState.loding()';
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
    required TResult Function(List<OrderProduct> data) success,
    required TResult Function(String massage) error,
  }) {
    return loding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<OrderProduct> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return loding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<OrderProduct> data)? success,
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

abstract class _Loding implements OrderState {
  const factory _Loding() = _$_Loding;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrderProduct> data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OrderProduct>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<OrderProduct> data) : _data = data;

  final List<OrderProduct> _data;
  @override
  List<OrderProduct> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OrderState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<OrderProduct> data) success,
    required TResult Function(String massage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<OrderProduct> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<OrderProduct> data)? success,
    TResult Function(String massage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
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

abstract class _Success implements OrderState {
  const factory _Success(final List<OrderProduct> data) = _$_Success;

  List<OrderProduct> get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$OrderStateCopyWithImpl<$Res, _$_Error>
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
    return 'OrderState.error(massage: $massage)';
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
    required TResult Function(List<OrderProduct> data) success,
    required TResult Function(String massage) error,
  }) {
    return error(massage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<OrderProduct> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return error?.call(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<OrderProduct> data)? success,
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

abstract class _Error implements OrderState {
  const factory _Error(final String massage) = _$_Error;

  String get massage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
