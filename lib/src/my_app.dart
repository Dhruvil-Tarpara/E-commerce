import 'package:ecommerce/src/provider/bloc/get/bloc/product_bloc.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/views/landing.dart';
import 'package:ecommerce/src/views/login/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FirebaseCloudHelper.firebaseCloudHelper.createCollection();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(
            create: (context) =>
                ProductBloc()..add(const ProductEvent.getProduct())),
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
