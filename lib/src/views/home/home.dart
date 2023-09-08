import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get/bloc/product_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/category.dart';
import 'package:ecommerce/src/views/catelog/details.dart';
import 'package:ecommerce/src/views/home/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      appBar: AppBar(
        backgroundColor: ConstColor.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundColor: ConstColor.black,
            child: IconButton(
              onPressed: () {
                Global.scaffoldkey.currentState!.openDrawer();
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.menu,
                color: ConstColor.white,
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: ConstColor.disable,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FxText(
                    text: ConstString.welcome,
                    size: 24,
                    fontWeight: FontWeight.w700,
                    color: ConstColor.black,
                  ),
                  FxText(
                    text: ConstString.fashionTitle,
                    size: 18,
                    fontWeight: FontWeight.w600,
                    color: ConstColor.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: height(context: context) * 0.06,
                      child: InkWell(
                        onTap: () {
                          showSearch(context: context, delegate: Search());
                        },
                        child: CupertinoSearchTextField(
                          enabled: false,
                          decoration: BoxDecoration(
                            color: ConstColor.disable,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(context: context) * 0.04,
                  ),
                  CircleAvatar(
                    backgroundColor: ConstColor.black,
                    child: IconButton(
                      onPressed: () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: ConstColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            SizedBox(
              height: height(context: context) * 0.22,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16.0),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                          text: "50% Off",
                          size: 22,
                          fontWeight: FontWeight.w700,
                          color: ConstColor.black,
                        ),
                        FxText(
                          text: "On everything today",
                          size: 18,
                          fontWeight: FontWeight.w400,
                          color: ConstColor.black,
                        ),
                        FxText(
                          text: ConstString.withCode,
                          size: 14,
                          color: ConstColor.grey,
                        ),
                        FxButton(
                          onPressed: () {},
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
            ),
            SizedBox(
              height: height(context: context) * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FxText(
                    text: ConstString.categories,
                    size: 20,
                    fontWeight: FontWeight.w700,
                    color: ConstColor.black,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: FxText(
                      text: ConstString.viewAll,
                      color: ConstColor.grey,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 60,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Global.categories.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        backgroundColor: ConstColor.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        context.read<ProductBloc>().add(
                              ProductEvent.category(
                                Global.categories[index].toString(),
                              ),
                            );

                        context.push(const CategoryPage());
                      },
                      child: FxText(
                        text: Global.categories[index].toString().capitalize(),
                        color: ConstColor.white,
                        size: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height(context: context) * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FxText(
                    text: ConstString.newArrivals,
                    size: 20,
                    fontWeight: FontWeight.w700,
                    color: ConstColor.black,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: FxText(
                      text: ConstString.viewAll,
                      color: ConstColor.grey,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(context: context) * 0.01,
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) => state.when(
                initial: () => const SizedBox.shrink(),
                loding: () => Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: ConstColor.black,
                  ),
                ),
                success: (data) => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      context.push(const DetailsPage());
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: width(context: context),
                            decoration: BoxDecoration(
                              color: ConstColor.disable,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 12,
                                  right: 12,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: ConstColor.black,
                                      maxRadius: 14,
                                      child: const Icon(
                                        Icons.favorite_border,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FxText(
                          textAlign: TextAlign.center,
                          text: data[index].name.toLowerCase().capitalize(),
                          color: ConstColor.black,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        FxText(
                          textAlign: TextAlign.center,
                          text: data[index].subtitle.toLowerCase().capitalize(),
                          color: ConstColor.grey,
                          size: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        FxText(
                          textAlign: TextAlign.center,
                          text: "\$ ${data[index].price}",
                          color: ConstColor.black,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                error: (massage) => FxText(text: massage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
