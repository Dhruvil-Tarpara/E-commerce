import 'dart:io';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/bottom_bar.dart';
import 'package:ecommerce/src/views/cart.dart';
import 'package:ecommerce/src/views/home/drawer.dart';
import 'package:ecommerce/src/views/home/home.dart';
import 'package:ecommerce/src/views/profile/profile.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  int index = 0;

  List<Widget> body = [
    const HomePage(),
    const CartPage(),
    const HomePage(),
    const ProfilePage(),
  ];
  page() {
    if (Global.selectedIndex.value != 0 ||
        Global.scaffoldkey.currentState!.isDrawerOpen) {
      Global.selectedIndex.value = 0;
      Global.scaffoldkey.currentState!.closeDrawer();
      return;
    } else {
      return exit(0);
    }
  }

  @override
  void initState() {
    super.initState();
    // Global.users = Users.fromJson(HiveHelper.hiveHelper.get(HiveKeys.user));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return page();
      },
      child: Scaffold(
        key: Global.scaffoldkey,
        backgroundColor: ConstColor.white,
        drawer: FxDrawer(drawerKey: Global.scaffoldkey),
        body: ValueListenableBuilder<int>(
          valueListenable: Global.selectedIndex,
          builder: (context, index, _) {
            return body[index];
          },
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: Global.selectedIndex,
          builder: (context, __, _) {
            return Container(
              decoration: BoxDecoration(
                color: ConstColor.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ConstColor.grey.withOpacity(0.3),
                    blurRadius: 3,
                    offset: const Offset(0, -0.1),
                  ),
                ],
              ),
              child: SalomonBottomBar(
                currentIndex: Global.selectedIndex.value,
                onTap: (value) {
                  Global.selectedIndex.value = value;
                },
                items: Global.bottomIcon
                    .map(
                      (e) => SalomonBottomBarItem(
                        activeIcon: CircleAvatar(
                          radius: 16,
                          backgroundColor: ConstColor.black,
                          child: Icon(
                            e[ConstString.bottomIcon],
                            color: ConstColor.white,
                            size: 18,
                          ),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          child: Icon(
                            e[ConstString.bottomIcon],
                            color: ConstColor.black,
                          ),
                        ),
                        title: FxText(
                          text: e[ConstString.bottomLable],
                          color: ConstColor.grey,
                          size: 12,
                        ),
                        selectedColor: ConstColor.grey,
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
