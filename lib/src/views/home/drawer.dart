import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/favourite.dart';
import 'package:ecommerce/src/views/home/logout_dialog.dart';
import 'package:ecommerce/src/views/profile/help.dart';
import 'package:ecommerce/src/views/profile/offer.dart';
import 'package:ecommerce/src/views/profile/privacy.dart';
import 'package:ecommerce/src/views/profile/profile_option.dart';
import 'package:ecommerce/src/views/profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FxDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;
  const FxDrawer({
    super.key,
    required this.drawerKey,
  });

  _closeDrawer() {
    drawerKey.currentState!.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ConstColor.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width(context: context),
                child: Card(
                  elevation: 8,
                  shadowColor: ConstColor.disable,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Card(
                      color: ConstColor.disable,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(Global.userImage),
                    ),
                    title: FxText(
                      textOverflow: TextOverflow.ellipsis,
                      text:
                          Global.users.profileName!.toLowerCase().capitalize(),
                      size: 18,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w700,
                    ),
                    subtitle: FxText(
                      textOverflow: TextOverflow.ellipsis,
                      text: Global.users.email ?? "",
                      size: 12,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height(context: context) * 0.02,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: ConstColor.disable, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ProfileOption(
                      onTap: () {
                        _closeDrawer();
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.getUser());
                        context.push(const UserProfilePage());
                      },
                      text: ConstString.personal,
                      icon: Icons.person_rounded,
                    ),
                    ProfileOption(
                      onTap: () {
                        _closeDrawer();
                        Global.selectedIndex.value = 1;
                      },
                      text: ConstString.myOrder,
                      icon: Icons.shopping_bag_rounded,
                    ),
                    ProfileOption(
                      onTap: () {
                        context.read<FavouriteBloc>().add(
                              const FavouriteEvent.getData(),
                            );
                        _closeDrawer();
                        context.push(const FavouritePage());
                      },
                      text: ConstString.myFavourites,
                      icon: Icons.favorite_rounded,
                    ),
                    ProfileOption(
                      onTap: () {},
                      text: ConstString.myAddress,
                      icon: Icons.local_shipping_rounded,
                    ),
                    ProfileOption(
                      onTap: () {},
                      text: ConstString.myCard,
                      icon: Icons.credit_card_rounded,
                    ),
                    ProfileOption(
                      onTap: () {
                        _closeDrawer();
                        context.push(const OfferPage(isCart: false,));
                      },
                      text: ConstString.discounts,
                      icon: Icons.local_offer_rounded,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height(context: context) * 0.04,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: ConstColor.disable, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    ProfileOption(
                      onTap: () {},
                      text: ConstString.faqs,
                      icon: Icons.error,
                    ),
                    ProfileOption(
                      onTap: () {
                        _closeDrawer();
                        context.push(const PrivacyPolicyScreen());
                      },
                      text: ConstString.privacy,
                      icon: Icons.privacy_tip_rounded,
                    ),
                    ProfileOption(
                      onTap: () {
                        context.push(const HelpCenterPage());
                        _closeDrawer();
                      },
                      text: ConstString.helpCenter,
                      icon: Icons.help_rounded,
                    ),
                    ProfileOption(
                      onTap: () {
                        _closeDrawer();
                        showDialog(
                          context: context,
                          builder: (context) => const LogoutDialog(),
                        );
                      },
                      text: ConstString.logout,
                      icon: Icons.login_rounded,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
