import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                Global.pageController.jumpToPage(
                  0,
                );
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
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FxText(
                  text: ConstString.myOrder,
                  size: 22,
                  fontWeight: FontWeight.w700,
                  color: ConstColor.black,
                ),
                const Spacer(),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: FxText(
                    text: ConstString.ongoing,
                    color: ConstColor.grey,
                    size: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width(context: context) * 0.02,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(8.0),
                    backgroundColor: ConstColor.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: FxText(
                    text: ConstString.complated,
                    color: ConstColor.white,
                    size: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: FxText(text: 'jkjkshhf'),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FxText(
                        text: "hhsjds",
                        size: 12,
                        color: ConstColor.grey,
                      ),
                      FxText(
                        text: "hhsjds",
                        size: 12,
                        color: ConstColor.grey,
                      ),
                      FxText(
                        text: "hhsjds",
                        size: 12,
                        color: ConstColor.grey,
                      ),
                      FxText(
                        text: "hhsjds",
                        size: 12,
                        color: ConstColor.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
