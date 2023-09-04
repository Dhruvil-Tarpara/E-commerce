part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(String email,password) = _Login;
  const factory LoginEvent.signUp(String email,password) = _SignUp;
  const factory LoginEvent.googleLogin() = _GoogleLogin;
}