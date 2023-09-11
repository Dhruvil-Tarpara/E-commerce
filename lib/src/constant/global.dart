import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:flutter/material.dart';

class Global {
  static final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  static final GlobalKey<ScaffoldState> scaffoldkey =
      GlobalKey<ScaffoldState>();

  static final ScrollController scrollController = ScrollController();

  static addWishlist() async {
    List<Product> data = await FirebaseCloudHelper.firebaseCloudHelper
        .getWishlist(userUid: Global.users.userId ?? "");
    wishlistController.value = data.map((e) => e.id).toList();
  }

  static bool checkWishlist(String id) {
    return wishlistController.value.any((e) => e == id);
  }

  static final ValueNotifier<List<String>> wishlistController =
      ValueNotifier<List<String>>([]);

  static late Users users;

  static const String splashImage = "assets/images/splash.png";
  static const String logoImage = "assets/images/logo/logo.jpg";
  static const String facebookIcon = "assets/images/icon/facebook.png";
  static const String googleIcon = "assets/images/icon/google.png";
  static const String appleIcon = "assets/images/icon/apple-logo.png";
  static const String checkLogin = "assets/images/icon/check.png";
  static const String demo = "assets/images/demo.jpg";
  static const String noFavoritesData = "assets/images/no_favorites_data.jpg";

  /// Product Catagory..
  static const String bags = "bags";
  static const String clothes = "clothes";
  static const String electronics = "electronics";
  static const String jewelry = "jewelry";
  static const String newArrivals = "new arrivals";
  static const String shoese = "shoese";

  static List categories = [
    bags,
    clothes,
    newArrivals,
    shoese,
    electronics,
    jewelry
  ];

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
