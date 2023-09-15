import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/order/order_bloc.dart';
import 'package:ecommerce/src/provider/model/order.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/extension/average_rating.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/cart/cart.dart';
import 'package:ecommerce/src/views/catelog/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatefulWidget {
  final Product product;
  const DetailsPage({super.key, required this.product});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<int> _selectedSize = ValueNotifier<int>(0);
  final ValueNotifier<int> _selectedStok = ValueNotifier<int>(1);
  final ValueNotifier<int> _selectedColor = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    _selectedSize.value = 0;
    _selectedColor.value = 0;
    _selectedStok.value = 1;
  }

  @override
  Widget build(BuildContext context) {
    List<Review> data = widget.product.rating!.values
        .toList()
        .map((e) => Review.fromJson(e))
        .toList();
    return WillPopScope(
      onWillPop: () async {
        if (_scrollController.position.pixels != 0) {
          _scrollController.animateTo(
            0,
            duration: const Duration(
                milliseconds: 400), // Adjust the duration as needed
            curve: Curves.easeInOut, // Adjust the curve as needed
          );
          return false;
        } else {
          return true;
        }
      },
      child: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (data, isadd) {
              if (isadd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: FxText(
                      textAlign: TextAlign.center,
                      text: ConstString.addedtobag,
                      size: 14,
                      color: ConstColor.white,
                      fontWeight: FontWeight.w500,
                    ),
                    backgroundColor: ConstColor.black,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 160,
                  ),
                );
                Future.delayed(
                  const Duration(milliseconds: 1000),
                  () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                );
              }
            },
          );
        },
        child: Scaffold(
          backgroundColor: ConstColor.white,
          body: SafeArea(
            child: Container(
              height: height(context: context),
              decoration: BoxDecoration(color: ConstColor.disable),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      height: height(context: context) * 0.52,
                      decoration: BoxDecoration(
                        color: ConstColor.disable,
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ImageSlider(image: widget.product.images),
                          ValueListenableBuilder(
                            valueListenable: Global.wishlistController,
                            builder: (context, value, child) {
                              bool isCheck =
                                  Global.checkWishlist(widget.product.id);
                              return Positioned(
                                top: height(context: context) * 0.44,
                                right: 16,
                                child: InkWell(
                                  onTap: () async {
                                    if (isCheck) {
                                      context.read<FavouriteBloc>().add(
                                            FavouriteEvent.remove(
                                              productDocId: widget.product.id,
                                            ),
                                          );
                                      Global.wishlistController.value
                                          .add(widget.product.id);
                                    } else {
                                      context.read<FavouriteBloc>().add(
                                            FavouriteEvent.add(
                                                product: widget.product),
                                          );
                                      Global.wishlistController.value
                                          .remove(widget.product.id);
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
                                ValueListenableBuilder(
                                  valueListenable: Global.totalQuantity,
                                  builder: (context, value, _) => Badge(
                                    backgroundColor: ConstColor.black,
                                    alignment: Alignment.topRight,
                                    label: FxText(
                                      text: value.toString(),
                                      color: ConstColor.white,
                                      fontWeight: FontWeight.w500,
                                      size: 10,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: ConstColor.white,
                                      child: IconButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     maintainState: false,
                                          //     builder: (context) =>
                                          //         const MyCartPage(),
                                          //   ),
                                          // );
                                          context.push(const MyCartPage());
                                        },
                                        highlightColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.shopping_bag_rounded,
                                          color: ConstColor.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: width(context: context) * 0.5,
                                    child: FxText(
                                      textOverflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      text: widget.product.name
                                          .toLowerCase()
                                          .capitalize(),
                                      size: 18,
                                      color: ConstColor.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width(context: context) * 0.5,
                                    child: FxText(
                                      textOverflow: TextOverflow.ellipsis,
                                      maxLines: 1,
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
                                        initialRating:
                                            data.averagerating(data: data),
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
                                        text:
                                            "(${data.length}${ConstString.review})",
                                        size: 12,
                                        color: ConstColor.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: ConstColor.disable,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ValueListenableBuilder(
                                      valueListenable: _selectedStok,
                                      builder: (context, value, _) => Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (value != 1) {
                                                _selectedStok.value--;
                                              }
                                            },
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
                                            text: value.toString(),
                                            size: 14,
                                            color: ConstColor.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _selectedStok.value++;
                                            },
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
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
                                  ValueListenableBuilder(
                                    valueListenable: _selectedSize,
                                    builder: (context, value, child) => Row(
                                      children: List.generate(
                                        widget.product.sizes.length,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              _selectedSize.value = index;
                                            },
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  (_selectedSize.value != index)
                                                      ? ConstColor.disable
                                                      : ConstColor.black,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.4),
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      ConstColor.disable,
                                                  child: FxText(
                                                    text: widget
                                                        .product.sizes[index]
                                                        .toString()
                                                        .capitalize(),
                                                    size: 14,
                                                    color: ConstColor.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height(context: context) * 0.02,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              ValueListenableBuilder(
                                valueListenable: _selectedColor,
                                builder: (context, value, child) => Card(
                                  elevation: 8,
                                  color: ConstColor.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Container(
                                    padding: (widget.product.colors.length > 2)
                                        ? const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 4)
                                        : const EdgeInsets.all(2),
                                    height: (widget.product.colors.length > 2)
                                        ? height(context: context) * .12
                                        : null,
                                    width: width(context: context) * 0.08,
                                    decoration: BoxDecoration(
                                      color: ConstColor.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      itemCount: widget.product.colors.length,
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                        onTap: () {
                                          _selectedColor.value = index;
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Color(
                                            int.parse(
                                                "0xff${widget.product.colors[index].toString()}"),
                                          ),
                                          child: (value == index)
                                              ? Icon(
                                                  Icons.done_rounded,
                                                  color: ConstColor.disable,
                                                  size: 12,
                                                )
                                              : const SizedBox.shrink(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width(context: context) * 0.02,
                              ),
                            ],
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FxText(
                                            textOverflow: TextOverflow.ellipsis,
                                            text: data[index].name ?? "",
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
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
                      text: "\$ ${widget.product.price}",
                      size: 18,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context: context) * 0.06,
                  child: FxButton(
                    onPressed: () {
                      String id = idGenerator();
                      context.read<OrderBloc>().add(
                            OrderEvent.addOrder(
                              order: OrderProduct(
                                orderId: id,
                                productId: widget.product.id,
                                title: widget.product.name,
                                subtitle: widget.product.subtitle,
                                image: widget.product.images[0],
                                price: widget.product.price,
                                color:
                                    widget.product.colors[_selectedColor.value],
                                size: widget.product.sizes[_selectedSize.value],
                                quantity: _selectedStok.value,
                                status: "Pending",
                              ),
                            ),
                          );
                    },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
