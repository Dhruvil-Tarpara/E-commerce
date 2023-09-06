import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/landing.dart';
import 'package:flutter/material.dart';

class CheckUserPage extends StatelessWidget {
  const CheckUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              SizedBox(
                height: height(context: context) * 0.08,
                child: const Center(
                  child: Image(
                    image: AssetImage(Global.checkLogin),
                  ),
                ),
              ),
              SizedBox(
                height: height(context: context) * 0.04,
              ),
              const FxText(
                text: ConstString.success,
                size: 28,
                fontWeight: FontWeight.w700,
              ),
              FxText(
                textAlign: TextAlign.center,
                text: ConstString.userLoginMassage,
                size: 14,
                color: ConstColor.black,
              ),
              const Spacer(),
              SizedBox(
                width: width(context: context),
                height: height(context: context) * 0.06,
                child: FxButton(
                  backgroundColor: ConstColor.black,
                  sideColor: ConstColor.black,
                  onPressed: () {
                    context.pushAndRemoveUntil(const LandingPage(), false);
                  },
                  child: FxText(
                    text: ConstString.shopping,
                    size: 18,
                    fontWeight: FontWeight.w500,
                    color: ConstColor.white,
                  ),
                ),
              ),
              SizedBox(
                height: height(context: context) * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
