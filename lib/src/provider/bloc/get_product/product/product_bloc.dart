import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  List<Product> allProduct = [];
  List<Product> category = [];
  ProductBloc() : super(const _Initial()) {
    on<ProductEvent>(
      (event, emit) async {
        if (event is _GetProduct) {
          allProduct = await FirebaseCloudHelper.firebaseCloudHelper.getData();
        } else if (event is _Category) {
          emit(const _Loding());
          category = allProduct
              .where((element) => element.category == event.category)
              .toList();
          if (category.isNotEmpty) {
            emit(_Success(category));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        } else if (event is _NewArrivals) {
          category = allProduct
              .where((element) => element.newArrivals == true)
              .toList();
          if (category.isNotEmpty) {
            emit(_Success(category));
          } else {
            emit(
              const _Error(ConstString.errorMassage),
            );
          }
        } else if (event is _Search) {
          emit(const _Loding());
          List<Product> data = category
              .where((element) => element.name
                  .toLowerCase()
                  .contains(event.query.toLowerCase()))
              .toList();
          if (data.isNotEmpty) {
            emit(_Success(data));
          } else {
            emit(const _Loding());
            emit(const _Error(ConstString.errorMassage));
          }
        }
      },
    );
  }
}
