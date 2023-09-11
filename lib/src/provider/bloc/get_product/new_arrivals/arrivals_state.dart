part of 'arrivals_bloc.dart';

@freezed
class ArrivalsState with _$ArrivalsState {
  const factory ArrivalsState.initial() = _Initial;
  const factory ArrivalsState.loding() = _Loding;
  const factory ArrivalsState.success(List<Product> data) = _Success;
  const factory ArrivalsState.error(String massage) = _Error;
}
