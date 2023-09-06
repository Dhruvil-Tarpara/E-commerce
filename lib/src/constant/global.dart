import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:flutter/material.dart';

class Global {
  static final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  static final GlobalKey<ScaffoldState> scaffoldkey =
      GlobalKey<ScaffoldState>();

  static Users? users;
  static const String splashImage = "assets/images/splash.png";
  static const String logoImage = "assets/images/logo/logo.jpg";
  static const String facebookIcon = "assets/images/icon/facebook.png";
  static const String googleIcon = "assets/images/icon/google.png";
  static const String appleIcon = "assets/images/icon/apple-logo.png";
  static const String checkLogin = "assets/images/icon/check.png";
  static const String demo = "assets/images/demo.jpg";

  static List<Map> page = [
    {
      "image": demo,
      "title": "Welcome to my fashion - Shop, Explore, and Save!",
      "subtitle": ConstString.introDescription,
    },
    {
      "image": demo,
      "title":
          "Unleash the Ultimate Shopping Experience with Our Ecommerce Extravaganza!",
      "subtitle": ConstString.introDescription,
    },
    {
      "image": demo,
      "title":
          "Revolutionize Your Shopping Experience with Our Cutting-Edge Ecommerce Platform – Unleash the Future of Online Retail",
      "subtitle": ConstString.introDescription,
    }
  ];
  static List bottomIcon = [
    {
      "icon": Icons.home,
      "lable": "Home",
    },
    {
      "icon": Icons.shopping_bag_rounded,
      "lable": "Cart",
    },
    {
      "icon": Icons.favorite_border,
      "lable": "Likes",
    },
    {
      "icon": Icons.person,
      "lable": "Profile",
    }
  ];
}
