part of 'favourite_bloc.dart';

@freezed
class FavouriteEvent with _$FavouriteEvent {
  const factory FavouriteEvent.getData() = _Started;
  const factory FavouriteEvent.remove({required String productDocId}) = _Remove;
  const factory FavouriteEvent.add({ required Product product}) = _Add;
  const factory FavouriteEvent.refresh() = _Refresh;

}