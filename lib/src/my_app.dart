import 'package:ecommerce/src/views/check_user.dart';
import 'package:ecommerce/src/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/login.dart';
import 'views/option.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckUserPage(),
    );
  }
}
