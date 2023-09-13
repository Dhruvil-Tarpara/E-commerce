import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
      resizeToAvoidBottomInset: false,
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
                context
                    .push(DetailsPage(
                      product: data[index],
                    ))
                    .then(
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              height: height(context: context),
                              imageUrl: data[index].images[0],
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: ConstColor.black,
                                highlightColor: ConstColor.grey,
                                child: Container(
                                  height: height(context: context) * 0.52,
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                          ValueListenableBuilder(
                            valueListenable: Global.wishlistController,
                            builder: (context, value, child) {
                              bool isCheck = value
                                  .any((element) => element == data[index].id);
                              return Positioned(
                                top: 12,
                                right: 12,
                                child: InkWell(
                                  onTap: () async {
                                    if (isCheck) {
                                      context.read<FavouriteBloc>().add(
                                            FavouriteEvent.remove(
                                              productDocId: data[index].id,
                                            ),
                                          );
                                      Global.wishlistController.value
                                          .add(data[index].id);
                                    } else {
                                      context.read<FavouriteBloc>().add(
                                            FavouriteEvent.add(
                                                product: data[index]),
                                          );
                                      Global.wishlistController.value
                                          .remove(data[index].id);
                                    }
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: (isCheck)
                                        ? ConstColor.white
                                        : ConstColor.black,
                                    maxRadius: 14,
                                    child: Icon(
                                      (isCheck)
                                          ? Icons.favorite_rounded
                                          : Icons.favorite_border,
                                      size: 18,
                                      color: (isCheck)
                                          ? ConstColor.red
                                          : ConstColor.white,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  FxText(
                    textAlign: TextAlign.center,
                    textOverflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    text: data[index].name.toLowerCase().capitalize(),
                    color: ConstColor.black,
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  FxText(
                    textAlign: TextAlign.center,
                    textOverflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    text: data[index].subtitle.toLowerCase().capitalize(),
                    color: ConstColor.grey,
                    size: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  FxText(
                    textAlign: TextAlign.center,
                    text: "\$${data[index].price}",
                    color: ConstColor.black,
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
          error: (massage) => const Center(
            child: Image(
              image: AssetImage(Global.noData),
            ),
          ),
        ),
      ),
    );
  }
}
