part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getData() = _Started;
  const factory OrderEvent.remove({
    required String orderId,
  }) = _Remove;
  const factory OrderEvent.addOrder({
    required OrderProduct order,
  }) = _AddOrder;
  const factory OrderEvent.refresh() = _Refresh;
  const factory OrderEvent.update({required String filed, required dynamic value,required String orderId,}) = _Update;
  const factory OrderEvent.applyOffers(String code) = _ApplyOffers;
}
