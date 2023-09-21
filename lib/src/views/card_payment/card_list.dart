import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/order/order_bloc.dart';
import 'package:ecommerce/src/provider/bloc/payment/payment_bloc.dart';
import 'package:ecommerce/src/provider/model/order.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/card_payment/custome_card_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardListPage extends StatefulWidget {
  final List<OrderProduct> order;
  const CardListPage({super.key, required this.order});

  @override
  State<CardListPage> createState() => _CardListPageState();
}

class _CardListPageState extends State<CardListPage> {
  final ValueNotifier<int> _selectedCard = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();
    context.read<PaymentBloc>().add(const PaymentEvent.getCard());
  }

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
                Navigator.pop(context);
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
      body: RefreshIndicator(
        backgroundColor: ConstColor.black,
        color: ConstColor.white,
        onRefresh: () {
          setState(() {});
          return Future.delayed(const Duration(milliseconds: 600));
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FxText(
                color: ConstColor.black,
                size: 22,
                fontWeight: FontWeight.w700,
                text: ConstString.payment,
              ),
              SizedBox(
                height: height(context: context) * 0.02,
              ),
              ValueListenableBuilder(
                valueListenable: _selectedCard,
                builder: (context, value, child) => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: Global.allCard.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        _selectedCard.value = index;
                      },
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: (_selectedCard.value != index)
                                ? ConstColor.white
                                : ConstColor.disable,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FxText(
                                    text:
                                        "XXXX XXXX XXXX ${Global.allCard[index].card!.last4!}",
                                  ),
                                  FxText(
                                    text: Global.allCard[index].card!.brand!,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: CircleAvatar(
                                  backgroundColor:
                                      (_selectedCard.value != index)
                                          ? ConstColor.disable
                                          : ConstColor.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.push(const CardPayment());
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: ConstColor.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: ConstColor.white,
                        child: Icon(
                          Icons.add,
                          color: ConstColor.black,
                        ),
                      ),
                      FxText(
                        text: "Add Card",
                        size: 14,
                        color: ConstColor.black,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder(
              valueListenable: Global.totalDiscountPrice,
              builder: (context, totalDiscountPrice, _) =>
                  ValueListenableBuilder(
                valueListenable: Global.totalPrice,
                builder: (context, value, _) => FxText(
                  text: "\$${value - totalDiscountPrice}",
                  size: 20,
                  color: ConstColor.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(),
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
                  context.read<PaymentBloc>().add(
                        PaymentEvent.pay(
                            cardNumber: 4242424242424242.toString(),
                            expMonth: 9.toString(),
                            expYear: 25.toString(),
                            cvc: 123.toString(),
                            amount: (Global.totalPrice.value -
                                    Global.totalDiscountPrice.value)
                                .toString(),
                            order: widget.order),
                      );
                  context.read<OrderBloc>().add(const OrderEvent.getData());
                  context.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: FxText(
                    text: ConstString.payment,
                    color: ConstColor.white,
                    size: 16,
                    fontWeight: FontWeight.w500,
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
