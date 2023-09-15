import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/provider/model/product.dart';
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
        else if(event is _ApplyOffers) {
          emit(const _Loding());
         
        //  if (data.isNotEmpty) {
        //   //   Global.totalDiscountPrice.value =
        //   //       (Global.totalPrice.value * data[0].toDouble()) ~/ 100;
        //   //   Global.totalPrice.value =
        //   //       Global.totalPrice.value - Global.totalDiscountPrice.value;
        //   } else {
        //     emit(const _Error(ConstString.errorMassage));
        //   }
        }
      },
    );
  }
}
