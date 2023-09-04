import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/authentication/auth.dart';
import 'package:ecommerce/src/provider/authentication/exaption_handle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>(
      (event, emit) async {
        if (event is _SignUp) {
          emit(const _Loding());
          try {
            User? user = await FirebaseAuthHelper.firebaseAuthHelper
                .signUpWithEmailPassword(
                    email: event.email, password: event.password);
            if (user != null) {
              emit(const _Success());
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } on FirebaseAuthException catch (e) {
            final status = AuthExceptionHandler.handleException(e);
            emit(_Error(AuthExceptionHandler.generateExceptionMessage(status)));
          }
        } else if (event is _Login) {
          emit(const _Loding());
          try {
            User? user = await FirebaseAuthHelper.firebaseAuthHelper
                .signInwithEmailPassword(
                    email: event.email, password: event.password);
            if (user != null) {
              emit(const _Success());
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } on FirebaseAuthException catch (e) {
            final status = AuthExceptionHandler.handleException(e);
            emit(_Error(AuthExceptionHandler.generateExceptionMessage(status)));
          }
        } else if (event is _GoogleLogin) {
          try {
            User? user =
                await FirebaseAuthHelper.firebaseAuthHelper.signInWithGoogle();
            if (user != null) {
              emit(const _Success());
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } on FirebaseAuthException catch (e) {
            final status = AuthExceptionHandler.handleException(e);
            emit(_Error(AuthExceptionHandler.generateExceptionMessage(status)));
          }
        }
      },
    );
  }
}
