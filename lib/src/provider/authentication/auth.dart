import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthHelper {
  FirebaseAuthHelper._();
  static final FirebaseAuthHelper firebaseAuthHelper = FirebaseAuthHelper._();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signUpWithEmailPassword({
    required String email,
    required String password,
  }) async {
    UserCredential credential =
        await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await firebaseAuth.currentUser!.sendEmailVerification();
    return credential.user;
  }

  Future<User?>  signInwithEmailPassword({
    required String email,
    required String password,
  }) async {
    UserCredential credential = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  Future<User?>  signInWithGoogle() async {

      if (Platform.isIOS) {
        // googleSignIn = GoogleSignIn(
        //   clientId:
        //       "953226139203-m30riok47kqvc3ticpdd64aqslk9mccj.apps.googleusercontent.com",
        //   scopes: ["email"],
        // );
      }
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication? googleAuth =
          await googleSignInAccount?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);

      return userCredential.user;
    
  }

  Future<bool> getCurrentUser() async {
    // try {
    //   await firebaseAuth.currentUser!.reload();
    //   User? user = firebaseAuth.currentUser;
    //   HiveHelper.hiveHelper.set(
    //     HiveKeys.user,
    //     Users(
    //       userName: user!.displayName,
    //       email: user.email,
    //       id: user.uid,
    //       url: user.photoURL,
    //       emailVarify: user.emailVerified,
    //     ).toJson(),
    //   );
    //   Global.users = Users.fromJson(HiveHelper.hiveHelper.get(HiveKeys.user));
    //   return user.emailVerified;
    // } catch (_) {}

    return false;
  }

  Future logout() async {
    try {
      await firebaseAuth.signOut();
      await googleSignIn.signOut();
    } catch (_) {}
  }
}
