import 'dart:async';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/payment/payment_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/card_payment/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final StreamController _cardNumberController = StreamController();
  final StreamController _expiryDateController = StreamController();
  final StreamController _cardHolderNameController = StreamController();
  final StreamController _cvvCodeController = StreamController();

  final ValueNotifier _error = ValueNotifier(AutovalidateMode.disabled);

  String _number = "";
  String _month = "";
  String _year = "";
  String _cvv = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.pop();
          },
        );
      },
      child: Scaffold(
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
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                CardPage(
                  cardHolder: _cardHolderNameController.stream,
                  cardNumber: _cardNumberController.stream,
                  expiryDate: _expiryDateController.stream,
                ),
                SizedBox(
                  height: height(context: context) * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FxText(
                      color: ConstColor.black,
                      size: 18,
                      fontWeight: FontWeight.w700,
                      text: ConstString.carddetails,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: FxText(
                        text: ConstString.clear,
                        color: ConstColor.grey,
                        size: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                ValueListenableBuilder(
                  valueListenable: _error,
                  builder: (context, value, child) => Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: ConstColor.grey, width: 3),
                            ),
                            label: FxText(
                              text: ConstString.cardNumber,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ConstString.cardnumbererror;
                            } else if (value.length != 16) {
                              return ConstString.cardnumbererror1;
                            }
                            return null;
                          },
                          onChanged: (number) {
                            _cardNumberController.sink.add(number);
                          },
                          onSaved: (newValue) {
                            _number = newValue!;
                          },
                        ),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                    color: ConstColor.grey, width: 3),
                              ),
                              label: FxText(
                                text: ConstString.expiryDate,
                                color: ConstColor.black,
                                size: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onChanged: (value) {
                              String? date = value;
                              if (value.length >= 2) {
                                date =
                                    '${date.substring(0, 2)}/${date.substring(2)}';
                              }
                              _expiryDateController.sink.add(date);
                            },
                            validator: (value) {
                              return value!.isValidExpiryDate();
                            },
                            onSaved: (newValue) {
                              _month = newValue!.substring(0, 2);
                              _year = newValue.substring(2);
                            }),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4)
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: ConstColor.grey, width: 3),
                            ),
                            label: FxText(
                              text: ConstString.cvv,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ConstString.cvverror;
                            }
                            return null;
                          },
                          onChanged: (number) {
                            _cvvCodeController.sink.add(number);
                          },
                          onSaved: (newValue) {
                            _cvv = newValue!;
                          },
                        ),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50)
                          ],
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: ConstColor.grey, width: 3),
                            ),
                            label: FxText(
                              text: ConstString.cardHolder,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ConstString.cardHolderError;
                            }
                            return null;
                          },
                          onChanged: (number) {
                            _cardHolderNameController.sink.add(number);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: FxText(
                        text: ConstString.cancel,
                        color: ConstColor.grey,
                        size: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColor.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          context.read<PaymentBloc>().add(
                                PaymentEvent.createCard(
                                  cardNumber: _number,
                                  expMonth: _month,
                                  expYear: _year,
                                  cvc: _cvv,
                                ),
                              );
                          context
                              .read<PaymentBloc>()
                              .add(const PaymentEvent.getCard());
                          context.pop();
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: FxText(
                          text: ConstString.confirm,
                          color: ConstColor.white,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
