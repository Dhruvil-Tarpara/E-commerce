import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';

class NotifiPage extends StatefulWidget {
  const NotifiPage({super.key});

  @override
  State<NotifiPage> createState() => _NotifiPageState();
}

class _NotifiPageState extends State<NotifiPage> {
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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FxText(
              color: ConstColor.black,
              size: 22,
              fontWeight: FontWeight.w700,
              text: ConstString.notification,
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
