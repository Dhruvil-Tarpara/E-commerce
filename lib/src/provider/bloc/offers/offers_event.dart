part of 'offers_bloc.dart';

@freezed
class OffersEvent with _$OffersEvent {
  const factory OffersEvent.getOffers() = _GetOffers;
  const factory OffersEvent.applyOffers(String code) = _ApplyOffers;
}