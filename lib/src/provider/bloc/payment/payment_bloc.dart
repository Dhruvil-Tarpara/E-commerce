import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/card/card.dart';
import 'package:ecommerce/src/provider/model/order.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:ecommerce/src/provider/payment/api_helper.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const _Initial()) {
    on<PaymentEvent>(
      (event, emit) async {
        if (event is _CreateUser) {
          try {
            String? response = await PaymentHelper.paymentHelper.createCustomer(
              address: event.address,
              name: Global.users.userName ?? "",
              email: Global.users.email ?? "",
            );
            if (response != null) {
              await FirebaseCloudHelper.firebaseCloudHelper
                  .updateUser(
                userUid: Global.users.userId ?? "",
                filed: ConstString.stripeId,
                value: response,
              )
                  .then(
                (value) async {
                  Users user = await FirebaseCloudHelper.firebaseCloudHelper
                      .getUser(userUid: Global.users.userId!);
                  await HiveHelper.hiveHelper.set(HiveKeys.user, user.toJson());
                  Global.users =
                      Users.fromJson(HiveHelper.hiveHelper.get(HiveKeys.user));
                },
              );
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } catch (_) {}
        } else if (event is _GetUser) {
        } else if (event is _CreateCard) {
          String? response = await PaymentHelper.paymentHelper.createCardTokan(
            cardNumber: event.cardNumber,
            expMonth: event.expMonth,
            expYear: event.expYear,
            cvc: event.cvc,
            name: Global.users.userName ?? "",
            address: Global.users.address,
          );
          if (response != null) {
            bool success = await PaymentHelper.paymentHelper
                .createCard(customerId: Global.users.stripeId ?? "");
            if (success) {
              emit(const _Success());
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _GetCard) {
          String? response = await PaymentHelper.paymentHelper.getCard(
            customerId: Global.users.stripeId ?? "",
          );
          if (response != null) {
            Card card = cardFromJson(response);
            Global.allCard = card.data!;
            emit(const _Success());
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Pay) {
          String? response = await PaymentHelper.paymentHelper.getPaymentMethod(
            cardNumber: event.cardNumber,
            cvc: event.cvc,
            expMonth: event.expMonth,
            expYear: event.expYear,
          );
          if (response != null) {
            String? data = await PaymentHelper.paymentHelper.getPaymentIntents(
              customerId: Global.users.stripeId ?? "",
              amount: event.amount,
              country: "usd",
              id: response,
              name: Global.users.userName ?? "",
            );
            if (data != null) {
              await FirebaseCloudHelper.firebaseCloudHelper
                  .addPayment(
                    userUid: Global.users.userId ?? "",
                    paymentId: data,
                    order: event.order,
                    offer: Global.totalDiscountPrice.value,
                    ammount: Global.totalPrice.value,
                  )
                  .then(
                    (value) => FirebaseCloudHelper.firebaseCloudHelper
                        .clearOrderProduct(
                      userUid: Global.users.userId ?? "",
                    ),
                  );
            } else {
              emit(const _Error(ConstString.errorMassage));
            }
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        }
      },
    );
  }
}
