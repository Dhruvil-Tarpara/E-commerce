import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/provider/bloc/offers/offers_bloc.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OfferPage extends StatefulWidget {
  final bool isCart;
  const OfferPage({super.key, required this.isCart});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
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
                Navigator.pop(context, null);
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
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FxText(
              color: ConstColor.black,
              size: 22,
              fontWeight: FontWeight.w700,
              text: ConstString.offer,
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            BlocBuilder<OffersBloc, OffersState>(
              builder: (context, state) => state.when(
                initial: () => const SizedBox.shrink(),
                loding: () => SizedBox(
                  height: height(context: context) * 0.6,
                  child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: ConstColor.black,
                    ),
                  ),
                ),
                success: (data) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      height: height(context: context) * 0.22,
                      width: width(context: context) * 0.72,
                      decoration: BoxDecoration(
                        color: ConstColor.disable,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FxText(
                            text: data[index].title!,
                            size: 22,
                            fontWeight: FontWeight.w700,
                            color: ConstColor.black,
                          ),
                          FxText(
                            text: data[index].subtitle!,
                            size: 18,
                            fontWeight: FontWeight.w400,
                            color: ConstColor.black,
                          ),
                          FxText(
                            text: "${ConstString.withCode} ${data[index].code}",
                            size: 14,
                            color: ConstColor.grey,
                          ),
                          FxButton(
                            onPressed: () {
                              if (widget.isCart) {
                                Navigator.pop(context, data[index].code);
                              } else {
                                context.read<ProductBloc>().add(
                                      ProductEvent.category(
                                          data[index].category.toString()),
                                    );
                                context.push(
                                  CategoryPage(
                                    category: data[index].category.toString(),
                                  ),
                                );
                              }
                            },
                            backgroundColor: ConstColor.black,
                            sideColor: ConstColor.black,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 2,
                              ),
                              child: FxText(
                                text: ConstString.banerButton,
                                color: ConstColor.white,
                                size: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                error: (massage) => Center(
                  child: Image.asset(
                    Global.noFavoritesData,
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
