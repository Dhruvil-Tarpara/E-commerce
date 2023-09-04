part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loding() = _Loding;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(String massage) = _Error;
}
