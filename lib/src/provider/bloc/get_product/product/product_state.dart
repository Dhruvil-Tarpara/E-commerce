part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loding() = _Loding;
  const factory ProductState.success(List<Product> data) = _Success;
  const factory ProductState.error(String massage) = _Error;
}
