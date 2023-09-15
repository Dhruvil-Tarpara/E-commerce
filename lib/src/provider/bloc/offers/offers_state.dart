part of 'offers_bloc.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState.initial() = _Initial;
  const factory OffersState.loding() = _Loding;
  const factory OffersState.success(List<Offers> data) = _Success;
  const factory OffersState.error(String massage) = _Error;
}
