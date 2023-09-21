part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.createUser(dynamic address) = _CreateUser;
  const factory PaymentEvent.getUser() = _GetUser;
  const factory PaymentEvent.createCard(
      {required String cardNumber,
      required String expMonth,
      required String expYear,
      required String cvc}) = _CreateCard;
  const factory PaymentEvent.getCard() = _GetCard;
  const factory PaymentEvent.pay({required String cardNumber,
      required String expMonth,
      required String expYear,
      required String cvc,
      required String amount,
      required List<OrderProduct> order}) = _Pay;
}
