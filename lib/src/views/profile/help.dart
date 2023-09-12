import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:flutter/material.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

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
                context.pop();
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
        title: FxText(
          color: ConstColor.black,
          size: 22,
          fontWeight: FontWeight.w600,
          text: ConstString.helpCenter,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: Global.helpTopics.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FxText(
              text: Global.helpTopics[index][ConstString.title] ?? "",
              color: ConstColor.black,
              size: 16,
              fontWeight: FontWeight.w600,
            ),
            FxText(
              text: Global.helpTopics[index][ConstString.details] ?? "",
              color: ConstColor.grey,
              size: 14,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
