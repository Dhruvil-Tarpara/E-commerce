import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/model/offer.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:flutter/material.dart';

class Global {
  /// landing screen
  static final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  static final GlobalKey<ScaffoldState> scaffoldkey =
      GlobalKey<ScaffoldState>();
  static final ScrollController scrollController = ScrollController();

  /// favourites screen
  static bool checkWishlist(String id) {
    return wishlistController.value.any((e) => e == id);
  }

  static final ValueNotifier<List<String>> wishlistController =
      ValueNotifier<List<String>>([]);

  /// Mycart screen
  static ValueNotifier<int> totalQuantity = ValueNotifier<int>(0);
  static ValueNotifier<int> totalPrice = ValueNotifier<int>(0);
  static ValueNotifier<int> totalDiscountPrice = ValueNotifier<int>(0);

  static late Users users;
  static Offers? offers;

  static const String splashImage = "assets/images/splash.png";
  static const String logoImage = "assets/images/logo/logo.jpg";
  static const String facebookIcon = "assets/images/icon/facebook.png";
  static const String googleIcon = "assets/images/icon/google.png";
  static const String appleIcon = "assets/images/icon/apple-logo.png";
  static const String checkLogin = "assets/images/icon/check.png";
  static const String demo = "assets/images/demo.jpg";
  static const String noFavoritesData = "assets/images/no_favorites_data.jpg";
  static const String noData = "assets/images/no_data.jpg";
  static const String userImage = "assets/images/user.jpg";
  static const String shoppingCart = "assets/images/shopping.jpg";

  /// Product Catagory..
  static const String bags = "bags";
  static const String clothes = "clothes";
  static const String electronics = "electronics";
  static const String jewelry = "jewelry";
  static const String newArrivals = "new arrivals";
  static const String shoese = "shoese";

  static List<Map> categories = [
    {
      "icon": "assets/images/icon/school-bag.png",
      "lable": bags,
    },
    {
      "icon": "assets/images/icon/laundry.png",
      "lable": clothes,
    },
    {
      "icon": "assets/images/icon/jogging.png",
      "lable": shoese,
    },
    {
      "icon": "assets/images/icon/medical-prescription.png",
      "lable": electronics,
    },
    {
      "icon": "assets/images/icon/jewelry.png",
      "lable": jewelry,
    },
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
      "icon": Icons.notifications,
      "lable": "Notifi",
    },
    {
      "icon": Icons.person,
      "lable": "Profile",
    }
  ];

  static final List<Map<String, String>> helpTopics = [
    {
      'title': '1. How to Place an Order',
      'details':
          'To place an order, browse our catalog, select the items you want, add them to your cart, and proceed to checkout. Fill in the required information and confirm your order.'
    },
    {
      'title': '2. Returns and Refunds',
      'details':
          'If you are not satisfied with your purchase, you can return it within 30 days for a full refund. Please check our return policy for more details.'
    },
    {
      'title': '3. Shipping Information',
      'details':
          'We offer various shipping options, including standard and express shipping. Shipping fees may apply, and delivery times vary by location.'
    },
    {
      'title': '4. Account Management',
      'details':
          'Learn how to create and manage your account, update your profile, and change your password in the account settings.'
    },
    {
      'title': '5. Contact Customer Support',
      'details':
          'If you have any questions or issues, our customer support team is available 24/7 to assist you. You can reach us via email, phone, or live chat.'
    },
  ];
  static final List<Map<String, String>> privacyTopics = [
    {
      'title': 'Introduction',
      'details':
          'Welcome to Your E-Commerce App. We are committed to protecting your privacy and providing a safe online experience. This Privacy Policy explains how we collect, use, and safeguard your personal information when you use our app.',
    },
  ];
}
