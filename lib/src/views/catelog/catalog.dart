import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
              text: ConstString.categories,
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Global.categories.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(60),
                  onTap: () {
                    context.read<ProductBloc>().add(
                          ProductEvent.category(
                            Global.categories[index][ConstString.bottomLable]
                                .toString(),
                          ),
                        );

                    context.push(
                      CategoryPage(
                        category: Global.categories[index]
                                [ConstString.bottomLable]
                            .toString(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    height: 80,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: ConstColor.black,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: ConstColor.white,
                          child: Image.asset(
                              Global.categories[index][ConstString.bottomIcon]),
                        ),
                        SizedBox(
                          width: width(context: context) * 0.04,
                        ),
                        FxText(
                          text: Global.categories[index]
                                  [ConstString.bottomLable]
                              .toString()
                              .capitalize(),
                          size: 18,
                          color: ConstColor.white,
                          fontWeight: FontWeight.w500,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_circle_right_rounded,
                          color: ConstColor.white,
                        )
                      ],
                    ),
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
