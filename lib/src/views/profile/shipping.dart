import 'package:country_picker/country_picker.dart';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/constant/widget/text_filed.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/provider/bloc/payment/payment_bloc.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/payment/customer.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _street = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _pincode = TextEditingController();

  final ValueNotifier<Country> _initCountry =
      ValueNotifier<Country>(Country.worldWide);

  @override
  void initState() {
    super.initState();
    _street.text = Global.users.address?.line1 ?? "";
    _city.text = Global.users.address?.city ?? "";
    _state.text = Global.users.address?.state ?? "";
    _pincode.text = Global.users.address?.postalCode ?? "";
    _initCountry.value = Global.users.country ?? Country.worldWide;
  }

  @override
  void dispose() {
    super.dispose();
    _street.dispose();
    _city.dispose();
    _state.dispose();
    _pincode.dispose();
    _initCountry.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      appBar: AppBar(
        backgroundColor: ConstColor.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ConstColor.black,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: ConstColor.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FxText(
                color: ConstColor.black,
                size: 22,
                fontWeight: FontWeight.w700,
                text: ConstString.address,
              ),
              SizedBox(
                height: height(context: context) * 0.02,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: ConstColor.disable,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FxText(
                      text:
                          "${ConstString.street} : ${Global.users.address?.city ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text:
                          "${ConstString.city} : ${Global.users.address?.line1 ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text:
                          "${ConstString.state} : ${Global.users.address?.city ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text: "${ConstString.phone} : ",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text:
                          "${ConstString.pincode} : ${Global.users.address?.postalCode ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text:
                          "${ConstString.code} : ${Global.users.country?.countryCode ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    FxText(
                      text:
                          "${ConstString.country} : ${Global.users.country?.displayName ?? ""}",
                      color: ConstColor.black,
                      size: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height(context: context) * 0.02,
              ),
              FxTextFormField(
                controller: _street,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                labelText: FxText(
                  text: ConstString.street,
                  color: ConstColor.black,
                  size: 14,
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ConstString.error;
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: FxTextFormField(
                      controller: _city,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      labelText: FxText(
                        text: ConstString.city,
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ConstString.error;
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: width(context: context) * 0.1,
                  ),
                  Expanded(
                    child: FxTextFormField(
                      controller: _state,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      labelText: FxText(
                        text: ConstString.state,
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ConstString.error;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              FxTextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                controller: _phone,
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
                labelText: FxText(
                  text: ConstString.phone,
                  color: ConstColor.black,
                  size: 14,
                  fontWeight: FontWeight.w500,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return ConstString.error;
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FxTextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(6),
                      ],
                      controller: _pincode,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      labelText: FxText(
                        text: ConstString.pincode,
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ConstString.error;
                        }
                        return null;
                      },
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: _initCountry,
                    builder: (context, value, child) => SizedBox(
                      width: width(context: context) * 0.58,
                      child: GestureDetector(
                        onTap: () {
                          showCountryPicker(
                            searchAutofocus: true,
                            context: context,
                            countryListTheme: CountryListThemeData(
                              flagSize: 25,
                              searchTextStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: ConstColor.black,
                              ),
                              backgroundColor: Colors.white,
                              textStyle: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: ConstColor.black,
                              ),
                              bottomSheetHeight: 500,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              inputDecoration: InputDecoration(
                                labelText: 'Search',
                                hintText: 'Start typing to search',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF8C98A8)
                                        .withOpacity(0.2),
                                  ),
                                ),
                              ),
                            ),
                            onSelect: (Country country) {
                              _initCountry.value = country;
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ConstColor.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: ConstColor.white,
                                child: FxText(text: value.flagEmoji),
                              ),
                              FxText(
                                maxLines: 1,
                                textOverflow: TextOverflow.ellipsis,
                                text: value.displayNameNoCountryCode,
                                size: 14,
                                fontWeight: FontWeight.w600,
                                color: ConstColor.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context: context) * 0.04,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ConstColor.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FirebaseCloudHelper.firebaseCloudHelper
                        .updateUser(
                            userUid: Global.users.userId ?? "",
                            filed: ConstString.address.toLowerCase(),
                            value: Address(
                              line1: _street.text,
                              city: _city.text,
                              state: _state.text,
                              postalCode: _pincode.text,
                              country: _initCountry.value.countryCode,
                            ).toJson())
                        .then(
                      (value) {
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.getUser());
                      },
                    );
                    if (Global.users.stripeId != null) {
                      context.pop();
                    } else {
                      setState(() {});
                      context.read<PaymentBloc>().add(
                            PaymentEvent.createUser(
                              Address(
                                line1: _street.text,
                                city: _city.text,
                                state: _state.text,
                                postalCode: _pincode.text,
                                country: _initCountry.value.countryCode,
                              ),
                            ),
                          );
                      context.pop();
                    }
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FxText(
                    text: ConstString.confirm,
                    color: ConstColor.white,
                    size: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
