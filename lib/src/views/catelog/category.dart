import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';

import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatefulWidget {
  final String category;
  const CategoryPage({super.key, required this.category});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  _removekeypad() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  final ValueNotifier<bool> _isSearch = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      appBar: AppBar(
        backgroundColor: ConstColor.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ConstColor.black,
            child: IconButton(
              onPressed: () {
                context
                    .read<ProductBloc>()
                    .add(const ProductEvent.newArrivals());
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
        title: ValueListenableBuilder(
          valueListenable: _isSearch,
          builder: (context, value, _) => value
              ? CupertinoSearchTextField(
                  onChanged: (value) {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.search(value, widget.category));
                  },
                  decoration: BoxDecoration(
                    color: ConstColor.disable,
                    borderRadius: BorderRadius.circular(40),
                  ),
                )
              : FxText(
                  textAlign: TextAlign.center,
                  text: widget.category.capitalize(),
                  color: ConstColor.black,
                  size: 18,
                  fontWeight: FontWeight.w600,
                ),
        ),
        actions: [
          ValueListenableBuilder(
            valueListenable: _isSearch,
            builder: (context, value, _) => IconButton(
              onPressed: () {
                _isSearch.value = !_isSearch.value;
                _removekeypad();
                context
                    .read<ProductBloc>()
                    .add(ProductEvent.category(widget.category));
              },
              highlightColor: ConstColor.transparent,
              splashColor: ConstColor.transparent,
              icon: Icon(
                value ? Icons.close : Icons.search_rounded,
                color: ConstColor.black,
                size: 26,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox.shrink(),
          loding: () => Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: ConstColor.black,
            ),
          ),
          success: (data) => GridView.builder(
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
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
                context.push( DetailsPage(product: data[index],)).then(
                      (value) => _removekeypad(),
                    );
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
                    text: data[index].name,
                    color: ConstColor.black,
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  FxText(
                    textAlign: TextAlign.center,
                    text: data[index].subtitle,
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
          error: (massage) => Center(
            child: FxText(text: massage),
          ),
        ),
      ),
    );
  }
}
