part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.loding() = _Loding;
  const factory PaymentState.success() = _Success;
  const factory PaymentState.error(String massage) = _Error;
}
