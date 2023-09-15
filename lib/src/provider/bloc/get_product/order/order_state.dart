part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
    const factory OrderState.initial() = _Initial;
  const factory OrderState.loding() = _Loding;
  const factory OrderState.success(List<OrderProduct> data,bool isadd) = _Success;
  const factory OrderState.error(String massage) = _Error;
}
