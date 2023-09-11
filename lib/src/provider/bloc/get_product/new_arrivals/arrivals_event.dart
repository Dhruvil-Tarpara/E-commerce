part of 'arrivals_bloc.dart';

@freezed
class ArrivalsEvent with _$ArrivalsEvent {
  const factory ArrivalsEvent.getData() = _GetData;
  const factory ArrivalsEvent.search(String query) = _Search;
  const factory ArrivalsEvent.refresh() = _Refresh;
}