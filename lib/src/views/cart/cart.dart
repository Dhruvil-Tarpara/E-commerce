import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/order/order_bloc.dart';
import 'package:ecommerce/src/provider/bloc/offers/offers_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/card_payment/custome_card_payment.dart';
import 'package:ecommerce/src/views/catelog/delete_dialog.dart';
import 'package:ecommerce/src/views/profile/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  final TextEditingController _code = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (Global.offers != null) {
      _code.text = Global.offers!.code ?? "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (data, isadd) {
                if (!isadd) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: FxText(
                        textAlign: TextAlign.center,
                        text: ConstString.updateBag,
                        size: 14,
                        color: ConstColor.white,
                        fontWeight: FontWeight.w500,
                      ),
                      backgroundColor: ConstColor.black,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 200,
                    ),
                  );
                  Future.delayed(
                    const Duration(milliseconds: 800),
                    () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                  );
                }
              },
              error: (massage) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: FxText(
                      textAlign: TextAlign.center,
                      text: ConstString.emptyBag,
                      size: 14,
                      color: ConstColor.white,
                      fontWeight: FontWeight.w500,
                    ),
                    backgroundColor: ConstColor.black,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 200,
                  ),
                );
              },
            );
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: ConstColor.white,
        body: SafeArea(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          child: Icon(
                            Icons.shopping_bag_rounded,
                            color: ConstColor.black,
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
                  color: ConstColor.black,
                  size: 22,
                  fontWeight: FontWeight.w700,
                  text: ConstString.myCard,
                ),
                SizedBox(
                  height: height(context: context) * 0.02,
                ),
                BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) => state.when(
                    initial: () => const SizedBox.shrink(),
                    loding: () => Center(
                      child: CircularProgressIndicator.adaptive(
                        backgroundColor: ConstColor.black,
                      ),
                    ),
                    success: (data, isadd) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Dismissible(
                        key: Key(index.toString()),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: ConstColor.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.centerRight,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        confirmDismiss: (direction) => showDialog(
                          context: context,
                          builder: (context) => const DeletePermissionDialog(),
                        ).then(
                          (confirmed) async {
                            if (confirmed == true) {
                              context.read<OrderBloc>().add(
                                    OrderEvent.remove(
                                      orderId: data[index].orderId,
                                    ),
                                  );
                              context
                                  .read<OrderBloc>()
                                  .add(const OrderEvent.refresh());
                            }
                            return null;
                          },
                        ),
                        child: Card(
                          color: ConstColor.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 8,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 0),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                child: CachedNetworkImage(
                                  imageUrl: data[index].image,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      Shimmer.fromColors(
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
                            ),
                            title: FxText(
                              maxLines: 1,
                              textOverflow: TextOverflow.ellipsis,
                              text:
                                  data[index].title.toLowerCase().capitalize(),
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            subtitle: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FxText(
                                  textOverflow: TextOverflow.ellipsis,
                                  text: data[index]
                                      .subtitle
                                      .toLowerCase()
                                      .capitalize(),
                                  color: ConstColor.grey,
                                  size: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    FxText(
                                      textOverflow: TextOverflow.ellipsis,
                                      text: "${ConstString.color} : ",
                                      color: ConstColor.grey,
                                      size: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: Color(
                                        int.parse(
                                            "0xff${data[index].color.toString()}"),
                                      ),
                                    ),
                                  ],
                                ),
                                FxText(
                                  textOverflow: TextOverflow.ellipsis,
                                  text:
                                      "${ConstString.size} : ${data[index].size.capitalize()}",
                                  color: ConstColor.grey,
                                  size: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                FxText(
                                  textOverflow: TextOverflow.ellipsis,
                                  text:
                                      "${ConstString.quantity} : ${data[index].quantity}",
                                  color: ConstColor.grey,
                                  size: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: ConstColor.disable,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          if (data[index].quantity != 1) {
                                            int demo = data[index].quantity;
                                            demo--;
                                            context.read<OrderBloc>().add(
                                                  OrderEvent.update(
                                                    filed: ConstString.quantity
                                                        .toLowerCase(),
                                                    value: demo,
                                                    orderId:
                                                        data[index].orderId,
                                                  ),
                                                );
                                          }
                                        },
                                        highlightColor: ConstColor.transparent,
                                        splashColor: ConstColor.transparent,
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
                                        text: data[index].quantity.toString(),
                                        size: 14,
                                        color: ConstColor.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          int demo = data[index].quantity;
                                          demo++;
                                          context.read<OrderBloc>().add(
                                                OrderEvent.update(
                                                  filed: ConstString.quantity
                                                      .toLowerCase(),
                                                  value: demo,
                                                  orderId: data[index].orderId,
                                                ),
                                              );
                                        },
                                        highlightColor: ConstColor.transparent,
                                        splashColor: ConstColor.transparent,
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
                                const Spacer(),
                                FxText(
                                  text: "\$ ${data[index].price}",
                                  size: 14,
                                  color: ConstColor.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    error: (massage) {
                      return Center(
                        child: Column(
                          children: [
                            Image.asset(
                              Global.shoppingCart,
                              height: height(context: context) * 0.3,
                            ),
                            FxText(
                              text: ConstString.emptyTitle,
                              size: 18,
                              color: ConstColor.black,
                              fontWeight: FontWeight.w500,
                            ),
                            FxText(
                              textAlign: TextAlign.center,
                              text: ConstString.emptySubTitle,
                              size: 14,
                              color: ConstColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: height(context: context) * 0.02,
                            ),
                            FxButton(
                              onPressed: () {
                                context.pop();
                              },
                              backgroundColor: ConstColor.black,
                              sideColor: ConstColor.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: FxText(
                                  text: ConstString.shopping,
                                  color: ConstColor.white,
                                  size: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height(context: context) * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () async {
                        String? result = await context.push(
                          const OfferPage(isCart: true),
                        );
                        if (result != null && result.isNotEmpty) {
                          _code.text = result;
                        }
                      },
                      child: FxText(
                        text: ConstString.offer,
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        _code.clear();
                        HiveHelper.hiveHelper.remove(HiveKeys.offer);
                        Global.totalDiscountPrice.value = 0;
                      },
                      child: FxText(
                        text: ConstString.clearcode,
                        color: ConstColor.blue,
                        size: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 60,
                  decoration: BoxDecoration(
                    color: ConstColor.disable,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _code,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ConstString.promoCode,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_code.text.isNotEmpty) {
                            context
                                .read<OffersBloc>()
                                .add(OffersEvent.applyOffers(_code.text));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(4),
                          backgroundColor: ConstColor.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: FxText(
                          text: ConstString.apply,
                          color: ConstColor.white,
                          size: 14,
                          fontWeight: FontWeight.w500,
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: height(context: context) * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder(
                    valueListenable: Global.totalQuantity,
                    builder: (context, value, child) => FxText(
                      text: ConstString.offer,
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: Global.totalDiscountPrice,
                    builder: (context, value, _) => FxText(
                      text: "\$ $value",
                      size: 20,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context: context) * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder(
                    valueListenable: Global.totalQuantity,
                    builder: (context, value, child) => FxText(
                      text: "${ConstString.total} ($value ${ConstString.item})",
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: Global.totalPrice,
                    builder: (context, value, _) => FxText(
                      text: "\$ $value",
                      size: 20,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context: context) * 0.01,
              ),
              SizedBox(
                height: height(context: context) * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ConstColor.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    context.push(const CardPayment());
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FxText(
                          text: ConstString.orderProceed,
                          color: ConstColor.white,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: ConstColor.white,
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
    );
  }
}
