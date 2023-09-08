part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProduct() = _GetProduct;
  const factory ProductEvent.search(String query) = _Search;
  const factory ProductEvent.refresh() = _Refresh;
  const factory ProductEvent.category(String category) = _Category;
  const factory ProductEvent.newArrivals() = _NewArrivals;
}