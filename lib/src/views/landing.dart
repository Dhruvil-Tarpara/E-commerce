import 'dart:io';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/new_arrivals/arrivals_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/order/order_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:ecommerce/src/utils/bottom_bar.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/views/cart/order.dart';
import 'package:ecommerce/src/views/home/drawer.dart';
import 'package:ecommerce/src/views/home/home.dart';
import 'package:ecommerce/src/views/notification/notifi.dart';
import 'package:ecommerce/src/views/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    const OrderPage(),
    const NotifiPage(),
    const ProfilePage(),
  ];
  page() {
    if (Global.selectedIndex.value != 0 ||
        Global.scaffoldkey.currentState!.isDrawerOpen ||
        Global.scrollController.positions.isNotEmpty) {
      Global.selectedIndex.value = 0;
      Global.scaffoldkey.currentState!.closeDrawer();
      if (Global.scrollController.position.pixels != 0) {
        Global.scrollController.animateTo(
          0,
          duration: const Duration(
              milliseconds: 500), // Adjust the duration as needed
          curve: Curves.easeInOut, // Adjust the curve as needed
        );
      }
      return;
    } else {
      Global.scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      return exit(0);
    }
  }

  @override
  void initState() {
    super.initState();
    Global.users = Users.fromJson(HiveHelper.hiveHelper.get(HiveKeys.user));
    context.read<ProductBloc>().add(const ProductEvent.getProduct());
    context.read<ArrivalsBloc>().add(const ArrivalsEvent.getData());
    context.read<FavouriteBloc>().add(const FavouriteEvent.getData());
    context.read<OrderBloc>().add(const OrderEvent.getData());
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
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             FirebaseCloudHelper.firebaseCloudHelper.createCollection();
//             FirebaseCloudHelper.firebaseCloudHelper.insertData(
//               product: Product(
//                 id: idGenerator(),
//                 name: "Puma Men",
//                 subtitle: "Puma Men Willow IDP Sneakers",
//                 price: 899,
//                 description: '''Forever Faster from day one PUMA timeline
// PUMA has relentlessly pushed sport and culture forward by creating fast products for the athletes. For more than 70 years, we draw strength and credibility from our heritage in sports. A first step in a long history driven by speed and performance: The brothers Rudolf and Adolf Dassler founded the company “Gebrüder Dassler Schuhfabrik” (Dassler Brothers Shoe Factory) in their hometown Herzogenaurach, Germany. Unbeknownst to them, they place the founding stone of the world capital of sports shoes.

// Within the town, they're not the only shoe factory. More, smaller factories are scattered throughout the town, though many did not manage to survive past the 1950s and 60s. The brothers started their factory in their parents' home in 1919, moving into its proper facility in 1924.

// Within the first few years, both gain notoriety. A majority of German athletes wear Dassler spikes at the Olympic Summer Games in Amsterdam, 1928.''',
//                 colors: ["black", "white"],
//                 sizes: ["s", "m", "l"],
//                 stock: 22,
//                 category: Global.shoese,
//                 newArrivals: true,
//                 images: [""],
//                 rating: {
//                   Global.users.userId.toString(): Review(
//                     email: Global.users.email,
//                     name: Global.users.profileName,
//                     rating: 4.0,
//                     review: "Good..",
//                   ).toJson(),
//                 },
//               ),
//             );
//           },
//         ),
      ),
    );
  }
}
