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

  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);

 

  await HiveHelper.hiveHelper.init();
  runApp(const MyApp());
}
