import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  final Product product;
  const DetailsPage({super.key, required this.product});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    List<Review> data = widget.product.rating!.values
        .toList()
        .map((e) => Review.fromJson(e))
        .toList();
    return WillPopScope(
      onWillPop: () async {
        _scrollController.animateTo(
          0,
          duration: const Duration(
              milliseconds: 400), // Adjust the duration as needed
          curve: Curves.easeInOut, // Adjust the curve as needed
        );
        return true;
      },
      child: Scaffold(
        backgroundColor: ConstColor.white,
        body: SafeArea(
          child: Container(
            height: height(context: context),
            decoration: BoxDecoration(color: ConstColor.disable),
            child: Stack(
              children: [
                SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      Container(
                        height: height(context: context) * 0.52,
                        color: ConstColor.disable,
                      ),
                      Container(
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
                                        text: widget.product.name
                                            .toLowerCase()
                                            .capitalize(),
                                        size: 18,
                                        color: ConstColor.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: width(context: context) * 0.6,
                                      child: FxText(
                                        textOverflow: TextOverflow.ellipsis,
                                        text: widget.product.subtitle
                                            .toLowerCase()
                                            .capitalize(),
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
                              text: widget.product.description
                                  .toLowerCase()
                                  .capitalize(),
                              size: 12,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: data.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            FxText(
                                              textOverflow:
                                                  TextOverflow.ellipsis,
                                              text: "${data[index].email}",
                                              size: 14,
                                              color: ConstColor.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            FxText(
                                              text: "${data[index].email}",
                                              size: 12,
                                              color: ConstColor.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        RatingBar.builder(
                                          initialRating:
                                              data[index].rating!.toDouble(),
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          tapOnlyMode: true,
                                          glow: false,
                                          updateOnDrag: false,
                                          ignoreGestures: true,
                                          itemCount: 5,
                                          itemSize: 18,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: ConstColor.star,
                                            size: 18,
                                          ),
                                          onRatingUpdate: (value) {},
                                        ),
                                        SizedBox(
                                          width: width(context: context) * 0.02,
                                        ),
                                        FxText(
                                          text: data[index].rating.toString(),
                                          size: 12,
                                          color: ConstColor.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height(context: context) * 0.01,
                                    ),
                                    FxText(
                                      text: "${data[index].review}",
                                      size: 14,
                                      color: ConstColor.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Padding(
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
      ),
    );
  }
}
