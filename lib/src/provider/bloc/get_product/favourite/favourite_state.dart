part of 'favourite_bloc.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  const factory FavouriteState.loding() = _Loding;
  const factory FavouriteState.success(List<Product> data) = _Success;
  const factory FavouriteState.error(String massage) = _Error;
}
