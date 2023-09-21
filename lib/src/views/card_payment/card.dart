import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final Stream<Object?> cardNumber;
  final Stream<Object?> cardHolder;
  final Stream<Object?> expiryDate;
  const CardPage(
      {super.key,
      required this.cardNumber,
      required this.cardHolder,
      required this.expiryDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ConstColor.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FxText(
                text: ConstString.cardNumber.capitalize(),
                color: ConstColor.white,
                size: 12,
              ),
              StreamBuilder(
                stream: cardNumber,
                builder: (context, snapshot) {
                  return FxText(
                    textOverflow: TextOverflow.ellipsis,
                    text: (snapshot.hasData)
                        ? snapshot.data.toString().addSpaceEvery4Characters()
                        : "XXXX XXXX XXXX",
                    color: ConstColor.white,
                    size: 20,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FxText(
                      text: ConstString.cardHolder.capitalize(),
                      color: ConstColor.white,
                      size: 12,
                    ),
                    StreamBuilder(
                      stream: cardHolder,
                      builder: (context, snapshot) {
                        return FxText(
                          textOverflow: TextOverflow.ellipsis,
                          text: (snapshot.hasData)
                              ? snapshot.data.toString()
                              : "------",
                          color: ConstColor.white,
                          size: 16,
                          fontWeight: FontWeight.w600,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FxText(
                    text: ConstString.expiryDate.capitalize(),
                    color: ConstColor.white,
                    size: 12,
                  ),
                  StreamBuilder(
                    stream: expiryDate,
                    builder: (context, snapshot) {
                      return FxText(
                        text: (snapshot.hasData)
                            ? snapshot.data.toString()
                            : "____",
                        color: ConstColor.white,
                        size: 16,
                        fontWeight: FontWeight.w600,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
