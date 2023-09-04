import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/utils/udf/udf.dart';
import 'package:ecommerce/src/views/intro.dart';
import 'package:ecommerce/src/views/login.dart';
import 'package:flutter/material.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        width: width(context: context),
        height: height(context: context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Global.splashImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: width(context: context),
              height: height(context: context) * 0.06,
              child: FxButton(
                backgroundColor: ConstColor.white,
                sideColor: ConstColor.white,
                onPressed: () {
                  Navigator.of(context).push(
                    UDF.pageTransition(
                      page: const LoginPage(),
                    ),
                  );
                },
                child: FxText(
                  text: ConstString.login,
                  size: 18,
                  fontWeight: FontWeight.w500,
                  color: ConstColor.black,
                ),
              ),
            ),
            SizedBox(
              height: height(context: context) * 0.01,
            ),
            SizedBox(
              width: width(context: context),
              height: height(context: context) * 0.06,
              child: FxButton(
                backgroundColor: Colors.transparent,
                sideColor: ConstColor.white,
                onPressed: () {
                  Navigator.of(context).push(
                    UDF.pageTransition(
                      page: const IntroPage(),
                    ),
                  );
                },
                child: FxText(
                  text: ConstString.signUp,
                  size: 18,
                  fontWeight: FontWeight.w500,
                  color: ConstColor.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
