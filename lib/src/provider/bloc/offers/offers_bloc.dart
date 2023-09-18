import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
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
        } else if (event is _ApplyOffers) {
          emit(const _Loding());
          allOffers =
              await FirebaseCloudHelper.firebaseCloudHelper.getOfferList();
          Offers data =
              allOffers.firstWhere((element) => element.code == event.code);
          await HiveHelper.hiveHelper.set(HiveKeys.offer, data.toJson());
          Global.offers =
              Offers.fromJson(HiveHelper.hiveHelper.get(HiveKeys.offer));
          if (Global.totalPrice.value != 0) {
            if (Global.offers != null) {
              Global.totalDiscountPrice.value =
                  (Global.totalPrice.value * data.discountPercentage!) ~/ 100;
            }
          }
        }
      },
    );
  }
}
