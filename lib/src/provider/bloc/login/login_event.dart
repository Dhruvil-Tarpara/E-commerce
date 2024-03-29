part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String email,
    required String password,
  }) = _Login;
  const factory LoginEvent.signUp({
    required String email,
    required String password,
    required String userName,
  }) = _SignUp;
  const factory LoginEvent.googleLogin() = _GoogleLogin;
  const factory LoginEvent.logOut() = _LogOut;
  const factory LoginEvent.getUser() = _GetUser;
}
