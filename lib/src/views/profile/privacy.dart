import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
          text: ConstString.privacy,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FxText(
              color: ConstColor.black,
              size: 18,
              fontWeight: FontWeight.w600,
              text: 'Privacy Policy for E-Commerce App',
            ),
            const SizedBox(height: 16.0),
            FxText(
              color: ConstColor.black,
              size: 14,
              fontWeight: FontWeight.w400,
              text: 'Effective Date: September 1, 2023',
            ),
            const SizedBox(height: 16.0),
            FxText(
              color: ConstColor.black,
              size: 16,
              fontWeight: FontWeight.w600,
              text: 'Introduction',
            ),
            FxText(
              color: ConstColor.grey,
              size: 14,
              fontWeight: FontWeight.w400,
              text:
                  'Welcome to Your E-Commerce App. We are committed to protecting your privacy and providing a safe online experience. This Privacy Policy explains how we collect, use, and safeguard your personal information when you use our app.',
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
