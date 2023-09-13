import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/cart/cart.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final ValueNotifier<bool> _selectedOrder = ValueNotifier<bool>(false);

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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder(
              valueListenable: Global.totalQuantity,
              builder: (context, value, _) => Badge(
                backgroundColor: ConstColor.white,
                alignment: Alignment.topRight,
                label: FxText(
                  text: value.toString(),
                  color: ConstColor.black,
                  fontWeight: FontWeight.w500,
                  size: 10,
                ),
                child: CircleAvatar(
                  backgroundColor: ConstColor.black,
                  child: IconButton(
                    onPressed: () {
                      context.push(const MyCartPage());
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: Icon(
                      Icons.shopping_bag_rounded,
                      color: ConstColor.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: _selectedOrder,
              builder: (context, value, _) => Row(
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(8.0),
                      backgroundColor:
                          value ? ConstColor.black : ConstColor.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      _selectedOrder.value = true;
                    },
                    child: FxText(
                      text: ConstString.ongoing,
                      color: value ? ConstColor.white : ConstColor.grey,
                      size: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: width(context: context) * 0.02,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(8.0),
                      backgroundColor:
                          value ? ConstColor.white : ConstColor.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      _selectedOrder.value = false;
                    },
                    child: FxText(
                      text: ConstString.complated,
                      color: value ? ConstColor.grey : ConstColor.white,
                      size: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Card(
                  child: ListTile(
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    trailing: FxText(
                      textOverflow: TextOverflow.clip,
                      softWrap: false,
                      maxLines: 1,
                      text: '122214',
                      size: 16,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w600,
                    ),
                    leading: Container(
                      width: width(context: context) * 0.24,
                      decoration: BoxDecoration(
                        color: ConstColor.disable,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    title: FxText(
                      textOverflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 1,
                      text: 'jkjkshhfsdsdsdsfsfsff',
                      size: 16,
                      color: ConstColor.black,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FxText(
                          textOverflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          text: "hhsjds",
                          size: 12,
                          color: ConstColor.grey,
                        ),
                        FxText(
                          textOverflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                          text: "hhsjds",
                          size: 12,
                          color: ConstColor.grey,
                        ),
                        FxText(
                          textOverflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                          text: "hhsjds",
                          size: 12,
                          color: ConstColor.grey,
                        ),
                        FxText(
                          textOverflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 1,
                          text: "hhsjds",
                          size: 12,
                          color: ConstColor.grey,
                        ),
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
