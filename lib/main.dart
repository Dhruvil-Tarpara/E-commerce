import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'src/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  await FirebaseMessaging.instance.getToken();
  await HiveHelper.hiveHelper.init();

  // Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

// class MyBlocObserver extends BlocObserver {
//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);

//     print(bloc);

//     print(event);

//     // TODO: implement onEvent
//   }
// }
