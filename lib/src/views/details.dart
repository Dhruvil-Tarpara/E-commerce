import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      body: SafeArea( 
        child: Container(
          height: height(context: context),
          decoration: BoxDecoration(color: ConstColor.disable),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height(context: context) * 0.52,
                      color: ConstColor.disable,
                    ),
                    Positioned(
                      top: height(context: context) / 2,
                      right: 0,
                      left: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: ConstColor.white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: width(context: context) * 0.6,
                                      child: FxText(
                                        textOverflow: TextOverflow.ellipsis,
                                        text: ConstString.producttitle,
                                        size: 18,
                                        color: ConstColor.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width(context: context) * 0.6,
                                      child: FxText(
                                        textOverflow: TextOverflow.ellipsis,
                                        text: ConstString.productstitle,
                                        size: 12,
                                        color: ConstColor.grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height(context: context) * 0.01,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          tapOnlyMode: true,
                                          glow: false,
                                          updateOnDrag: false,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: ConstColor.star,
                                            size: 18,
                                          ),
                                          onRatingUpdate: (value) {},
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        FxText(
                                          text: ConstString.review,
                                          size: 12,
                                          color: ConstColor.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: height(context: context) * 0.04,
                                      decoration: BoxDecoration(
                                        color: ConstColor.disable,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 18,
                                            ),
                                            style: IconButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                          FxText(
                                            text: "1",
                                            size: 14,
                                            color: ConstColor.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              size: 18,
                                            ),
                                            style: IconButton.styleFrom(
                                              minimumSize: Size.zero,
                                              padding: EdgeInsets.zero,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: height(context: context) * 0.01,
                                    ),
                                    FxText(
                                      text: ConstString.instok,
                                      size: 12,
                                      color: ConstColor.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height(context: context) * 0.02,
                            ),
                            FxText(
                              text: ConstString.size,
                              size: 16,
                              color: ConstColor.black,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: height(context: context) * 0.01,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          backgroundColor: ConstColor.disable,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height(context: context) * 0.02,
                            ),
                            FxText(
                              text: ConstString.description,
                              size: 16,
                              color: ConstColor.black,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: height(context: context) * 0.01,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            FxText(
                              text:
                                  "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
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
                    CircleAvatar(
                      backgroundColor: ConstColor.white,
                      child: IconButton(
                        onPressed: () {},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: Icon(
                          Icons.shopping_bag_rounded,
                          color: ConstColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FxText(
                  text: ConstString.totalPrice,
                  size: 10,
                  color: ConstColor.grey,
                ),
                FxText(
                  text: "\$1999",
                  size: 18,
                  color: ConstColor.black,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            SizedBox(
              height: height(context: context) * 0.06,
              child: FxButton(
                backgroundColor: ConstColor.black,
                sideColor: ConstColor.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.shopping_bag_rounded,
                        color: ConstColor.white,
                      ),
                      SizedBox(
                        width: width(context: context) * 0.02,
                      ),
                      FxText(
                        text: ConstString.addtocart,
                        color: ConstColor.white,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
