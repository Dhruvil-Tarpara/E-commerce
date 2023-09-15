import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/offer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_event.dart';
part 'offers_state.dart';
part 'offers_bloc.freezed.dart';

class OffersBloc extends Bloc<OffersEvent, OffersState> {
  List<Offers> allOffers = [];
  OffersBloc() : super(const _Initial()) {
    on<OffersEvent>(
      (event, emit) async {
        if (event is _GetOffers) {
          emit(const _Loding());
          allOffers =
              await FirebaseCloudHelper.firebaseCloudHelper.getOfferList();
          if (allOffers.isNotEmpty) {
            emit(_Success(allOffers));
          } else {
            emit(const _Error(ConstString.errorMassage));
          }
        }
      },
    );
  }
}
