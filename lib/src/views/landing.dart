import 'dart:io';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/bottom_bar.dart';
import 'package:ecommerce/src/views/cart.dart';
import 'package:ecommerce/src/views/home.dart';
import 'package:ecommerce/src/views/profile/profile.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  List<Widget> body = const [
    HomePage(),
    CartPage(),
    HomePage(),
    ProfilePage(),
  ];
  page() {
    if (Global.selectedIndex.value != 0) {
      Global.selectedIndex.value = 0;
      Global.pageController.jumpToPage(
        0,
      );
      return;
    } else {
      return exit(0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return page();
      },
      child: Scaffold(
        key: _key,
        backgroundColor: ConstColor.white,
        body: PageView.builder(
          onPageChanged: (value) {
            Global.selectedIndex.value = value;
          },
          controller: Global.pageController,
          itemCount: body.length,
          itemBuilder: (context, index) => body[index],
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: Global.selectedIndex,
          builder: (context, index, _) {
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
                  Global.pageController.jumpToPage(
                    value,
                  );
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
