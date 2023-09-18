import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  late List<OrderProduct> allOrder;
  OrderBloc() : super(const _Initial()) {
    on<OrderEvent>(
      (event, emit) async {
        if (event is _Started) {
          emit(const _Loding());
          allOrder = await FirebaseCloudHelper.firebaseCloudHelper.getOrderList(
            userUid: Global.users.userId!,
          );
          Global.totalQuantity.value = 0;
          Global.totalPrice.value = 0;
          for (var element in allOrder) {
            Global.totalQuantity.value += element.quantity;
            Global.totalPrice.value +=
                (element.price * element.quantity).toInt();
          }
          if (allOrder.isNotEmpty) {
            if (Global.offers != null) {
              Global.totalDiscountPrice.value = (Global.totalPrice.value *
                      (Global.offers!.discountPercentage ?? 0)) ~/
                  100;
            } else {
              Global.totalDiscountPrice.value = 0;
            }
            emit(_Success(allOrder, false));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _AddOrder) {
          if (allOrder.any(
                  (element) => element.productId == event.order.productId) &&
              allOrder.any((element) => element.color == event.order.color) &&
              allOrder.any((element) => element.size == event.order.size)) {
            OrderProduct data = allOrder.firstWhere(
                (element) => element.productId == event.order.productId);

            await FirebaseCloudHelper.firebaseCloudHelper.addOrderProduct(
              userUid: Global.users.userId!,
              order: OrderProduct(
                orderId: data.orderId,
                productId: data.productId,
                title: data.title,
                subtitle: data.subtitle,
                image: data.image,
                price: data.price,
                color: data.color,
                size: data.size,
                quantity: event.order.quantity + data.quantity,
                status: data.status,
              ),
              orderId: data.orderId,
            );
          } else {
            await FirebaseCloudHelper.firebaseCloudHelper.addOrderProduct(
              userUid: Global.users.userId!,
              order: event.order,
              orderId: event.order.orderId,
            );
          }
          allOrder = await FirebaseCloudHelper.firebaseCloudHelper.getOrderList(
            userUid: Global.users.userId!,
          );
          Global.totalQuantity.value = 0;
          Global.totalPrice.value = 0;
          for (var element in allOrder) {
            Global.totalQuantity.value += element.quantity;
            Global.totalPrice.value +=
                (element.price * element.quantity).toInt();
          }
          if (allOrder.isNotEmpty) {
            if (Global.offers != null) {
              Global.totalDiscountPrice.value = (Global.totalPrice.value *
                      Global.offers!.discountPercentage!) ~/
                  100;
            } else {
              Global.totalDiscountPrice.value = 0;
            }
            emit(_Success(allOrder, true));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Remove) {
          await FirebaseCloudHelper.firebaseCloudHelper.removeOrderProduct(
            userUid: Global.users.userId!,
            orderId: event.orderId,
          );
          if (Global.offers != null) {
            Global.totalDiscountPrice.value = (Global.totalPrice.value *
                    Global.offers!.discountPercentage!) ~/
                100;
          } else {
            Global.totalDiscountPrice.value = 0;
          }
        } else if (event is _Refresh) {
          allOrder = await FirebaseCloudHelper.firebaseCloudHelper.getOrderList(
            userUid: Global.users.userId!,
          );
          Global.totalQuantity.value = 0;
          Global.totalPrice.value = 0;
          for (var element in allOrder) {
            Global.totalQuantity.value += element.quantity;
            Global.totalPrice.value +=
                (element.price * element.quantity).toInt();
          }
          if (allOrder.isNotEmpty) {
            if (Global.offers != null) {
              Global.totalDiscountPrice.value = (Global.totalPrice.value *
                      Global.offers!.discountPercentage!) ~/
                  100;
            } else {
              Global.totalDiscountPrice.value = 0;
            }
            emit(_Success(allOrder, false));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Update) {
          await FirebaseCloudHelper.firebaseCloudHelper.update(
            userUid: Global.users.userId!,
            orderId: event.orderId,
            filed: event.filed,
            value: event.value,
          );
          allOrder = await FirebaseCloudHelper.firebaseCloudHelper.getOrderList(
            userUid: Global.users.userId!,
          );
          Global.totalQuantity.value = 0;
          Global.totalPrice.value = 0;
          for (var element in allOrder) {
            Global.totalQuantity.value += element.quantity;
            Global.totalPrice.value +=
                (element.price * element.quantity).toInt();
          }
          if (allOrder.isNotEmpty) {
            if (Global.offers != null) {
              Global.totalDiscountPrice.value = (Global.totalPrice.value *
                      Global.offers!.discountPercentage!) ~/
                  100;
            } else {
              Global.totalDiscountPrice.value = 0;
            }
            emit(_Success(allOrder, false));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else {
          Global.totalDiscountPrice.value = 0;
          emit(const _Error(ConstString.errorMassage));
        }
      },
    );
  }
}
