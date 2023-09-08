import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/home/logout_dialog.dart';
import 'package:ecommerce/src/views/login/option.dart';
import 'package:ecommerce/src/views/profile/privacy.dart';
import 'package:ecommerce/src/views/profile/profile_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      appBar: AppBar(
        backgroundColor: ConstColor.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ConstColor.black,
            child: IconButton(
              onPressed: () {
                Global.selectedIndex.value = 0;
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: ConstColor.white,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            highlightColor: ConstColor.transparent,
            splashColor: ConstColor.transparent,
            icon: Icon(
              Icons.settings,
              color: ConstColor.black,
              size: 26,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_rounded,
                        color: ConstColor.black,
                        size: 40,
                      ),
                    ),
                  ),
                  title: (Global.users.userName != "")
                      ? FxText(
                          text: Global.users.userName!.capitalize(),
                          size: 18,
                          color: ConstColor.black,
                          fontWeight: FontWeight.w700,
                        )
                      : FxText(
                          text: Global.users.email!.split("@")[0].capitalize(),
                          size: 18,
                          color: ConstColor.black,
                          fontWeight: FontWeight.w700,
                        ),
                  subtitle: FxText(
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
                    onTap: () {},
                    text: ConstString.personal,
                    icon: Icons.person_rounded,
                  ),
                  ProfileOption(
                    onTap: () {},
                    text: ConstString.myOrder,
                    icon: Icons.shopping_bag_rounded,
                  ),
                  ProfileOption(
                    onTap: () {},
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
                    onTap: () async {
                      await openAppSettings();
                    },
                    text: ConstString.settings,
                    icon: Icons.settings,
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
                      context.push(const PrivacyPolicyScreen());
                    },
                    text: ConstString.privacy,
                    icon: Icons.privacy_tip_rounded,
                  ),
                  ProfileOption(
                    onTap: () {},
                    text: ConstString.helpCenter,
                    icon: Icons.help_rounded,
                  ),
                  ProfileOption(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const LogoutDialog(),
                      ).then(
                        (confirmed) async {
                          if (confirmed == true) {
                            BlocProvider.of<LoginBloc>(context)
                                .add(const LoginEvent.logOut());
                            await HiveHelper.hiveHelper
                                .set(HiveKeys.login, false)
                                .then((value) => (context).pushAndRemoveUntil(
                                    const OptionPage(), false));
                          }
                        },
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
    );
  }
}
