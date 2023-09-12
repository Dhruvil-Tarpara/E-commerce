import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/new_arrivals/arrivals_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/views/landing.dart';
import 'package:ecommerce/src/views/login/option.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  getPemission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  @override
  void initState() {
    super.initState();
    FirebaseCloudHelper.firebaseCloudHelper.createCollection();
    getPemission();
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      print("tokan --- ${fcmToken}");
    }).onError((err) {
      // Error getting token.
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(
            create: (context) =>
                ProductBloc()..add(const ProductEvent.getProduct())),
        BlocProvider(
            create: (context) =>
                ArrivalsBloc()..add(const ArrivalsEvent.getData())),
        BlocProvider(create: (context) => FavouriteBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: (HiveHelper.hiveHelper.get(HiveKeys.login) ?? false)
            ? const LandingPage()
            : const OptionPage(),
      ),
    );
  }
}
