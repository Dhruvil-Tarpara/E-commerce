// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(String code) applyOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(String code)? applyOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(String code)? applyOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_ApplyOffers value) applyOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_ApplyOffers value)? applyOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_ApplyOffers value)? applyOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res, OffersEvent>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res, $Val extends OffersEvent>
    implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetOffersCopyWith<$Res> {
  factory _$$_GetOffersCopyWith(
          _$_GetOffers value, $Res Function(_$_GetOffers) then) =
      __$$_GetOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOffersCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$_GetOffers>
    implements _$$_GetOffersCopyWith<$Res> {
  __$$_GetOffersCopyWithImpl(
      _$_GetOffers _value, $Res Function(_$_GetOffers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOffers implements _GetOffers {
  const _$_GetOffers();

  @override
  String toString() {
    return 'OffersEvent.getOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(String code) applyOffers,
  }) {
    return getOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(String code)? applyOffers,
  }) {
    return getOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(String code)? applyOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_ApplyOffers value) applyOffers,
  }) {
    return getOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_ApplyOffers value)? applyOffers,
  }) {
    return getOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_ApplyOffers value)? applyOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers(this);
    }
    return orElse();
  }
}

abstract class _GetOffers implements OffersEvent {
  const factory _GetOffers() = _$_GetOffers;
}

/// @nodoc
abstract class _$$_ApplyOffersCopyWith<$Res> {
  factory _$$_ApplyOffersCopyWith(
          _$_ApplyOffers value, $Res Function(_$_ApplyOffers) then) =
      __$$_ApplyOffersCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ApplyOffersCopyWithImpl<$Res>
    extends _$OffersEventCopyWithImpl<$Res, _$_ApplyOffers>
    implements _$$_ApplyOffersCopyWith<$Res> {
  __$$_ApplyOffersCopyWithImpl(
      _$_ApplyOffers _value, $Res Function(_$_ApplyOffers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ApplyOffers(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApplyOffers implements _ApplyOffers {
  const _$_ApplyOffers(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'OffersEvent.applyOffers(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyOffers &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplyOffersCopyWith<_$_ApplyOffers> get copyWith =>
      __$$_ApplyOffersCopyWithImpl<_$_ApplyOffers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
    required TResult Function(String code) applyOffers,
  }) {
    return applyOffers(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOffers,
    TResult? Function(String code)? applyOffers,
  }) {
    return applyOffers?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    TResult Function(String code)? applyOffers,
    required TResult orElse(),
  }) {
    if (applyOffers != null) {
      return applyOffers(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
    required TResult Function(_ApplyOffers value) applyOffers,
  }) {
    return applyOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOffers value)? getOffers,
    TResult? Function(_ApplyOffers value)? applyOffers,
  }) {
    return applyOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    TResult Function(_ApplyOffers value)? applyOffers,
    required TResult orElse(),
  }) {
    if (applyOffers != null) {
      return applyOffers(this);
    }
    return orElse();
  }
}

abstract class _ApplyOffers implements OffersEvent {
  const factory _ApplyOffers(final String code) = _$_ApplyOffers;

  String get code;
  @JsonKey(ignore: true)
  _$$_ApplyOffersCopyWith<_$_ApplyOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OffersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loding,
    required TResult Function(List<Offers> data) success,
    required TResult Function(String massage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Offers> data)? success,
    TResult? Function(String massage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Offers> data)? success,
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
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res, OffersState>;
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res, $Val extends OffersState>
    implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

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
    extends _$OffersStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OffersState.initial()';
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
    required TResult Function(List<Offers> data) success,
    required TResult Function(String massage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Offers> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Offers> data)? success,
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

abstract class _Initial implements OffersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LodingCopyWith<$Res> {
  factory _$$_LodingCopyWith(_$_Loding value, $Res Function(_$_Loding) then) =
      __$$_LodingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LodingCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$_Loding>
    implements _$$_LodingCopyWith<$Res> {
  __$$_LodingCopyWithImpl(_$_Loding _value, $Res Function(_$_Loding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loding implements _Loding {
  const _$_Loding();

  @override
  String toString() {
    return 'OffersState.loding()';
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
    required TResult Function(List<Offers> data) success,
    required TResult Function(String massage) error,
  }) {
    return loding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Offers> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return loding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Offers> data)? success,
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

abstract class _Loding implements OffersState {
  const factory _Loding() = _$_Loding;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offers> data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$OffersStateCopyWithImpl<$Res, _$_Success>
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
              as List<Offers>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(final List<Offers> data) : _data = data;

  final List<Offers> _data;
  @override
  List<Offers> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OffersState.success(data: $data)';
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
    required TResult Function(List<Offers> data) success,
    required TResult Function(String massage) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Offers> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Offers> data)? success,
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

abstract class _Success implements OffersState {
  const factory _Success(final List<Offers> data) = _$_Success;

  List<Offers> get data;
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
    extends _$OffersStateCopyWithImpl<$Res, _$_Error>
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
    return 'OffersState.error(massage: $massage)';
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
    required TResult Function(List<Offers> data) success,
    required TResult Function(String massage) error,
  }) {
    return error(massage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loding,
    TResult? Function(List<Offers> data)? success,
    TResult? Function(String massage)? error,
  }) {
    return error?.call(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loding,
    TResult Function(List<Offers> data)? success,
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

abstract class _Error implements OffersState {
  const factory _Error(final String massage) = _$_Error;

  String get massage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
