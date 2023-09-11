import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'arrivals_event.dart';
part 'arrivals_state.dart';
part 'arrivals_bloc.freezed.dart';

class ArrivalsBloc extends Bloc<ArrivalsEvent, ArrivalsState> {
  List<Product> allProduct = [];
  ArrivalsBloc() : super(const _Initial()) {
    on<ArrivalsEvent>(
      (event, emit) async {
        if (event is _GetData) {
          emit(const _Loding());
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper.getData();
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
            emit(_Success(allProduct));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Search) {
          List<Product> data = allProduct
              .where((element) => element.name
                  .toLowerCase()
                  .contains(event.query.toLowerCase()))
              .toList();
          if (data.isNotEmpty) {
            emit(const _Loding());
            emit(_Success(data));
          } else {
            emit(const _Loding());
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _Refresh) {
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper.getData();
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
            emit(_Success(allProduct));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        }
      },
    );
  }
}
