import 'package:ecommerce/src/constant/global.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';
part 'favourite_bloc.freezed.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  List<Product> allProduct = [];
  FavouriteBloc() : super(const _Initial()) {
    on<FavouriteEvent>(
      (event, emit) async {
        if (event is _Started) {
          emit(const _Loding());
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper
              .getWishlist(userUid: Global.users.userId!);
          allProduct.sort((a, b) {
            if (a.newArrivals == true && b.newArrivals == false) {
              return -1;
            } else if (a.newArrivals == false && b.newArrivals == true) {
              return 1;
            } else {
              return 0;
            }
          });
          if (allProduct.isNotEmpty) {
            Global.wishlistController.value =
                allProduct.map((e) => e.id).toList();
            emit(_Success(allProduct));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Add) {
          await FirebaseCloudHelper.firebaseCloudHelper.addWishlist(
            userUid: Global.users.userId!,
            product: event.product,
            productId: event.product.id,
          );
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper
              .getWishlist(userUid: Global.users.userId!);
          Global.wishlistController.value =
              allProduct.map((e) => e.id).toList();
        } else if (event is _Remove) {
          await FirebaseCloudHelper.firebaseCloudHelper.removeWishlist(
            userUid: Global.users.userId!,
            productDocId: event.productDocId,
          );
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper
              .getWishlist(userUid: Global.users.userId!);
          Global.wishlistController.value =
              allProduct.map((e) => e.id).toList();
        } else if (event is _Refresh) {
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper
              .getWishlist(userUid: Global.users.userId!);
          allProduct.sort((a, b) {
            if (a.newArrivals == true && b.newArrivals == false) {
              return -1;
            } else if (a.newArrivals == false && b.newArrivals == true) {
              return 1;
            } else {
              return 0;
            }
          });
          if (allProduct.isNotEmpty) {
            Global.wishlistController.value =
                allProduct.map((e) => e.id).toList();
            emit(_Success(allProduct));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        }
      },
    );
  }
}
