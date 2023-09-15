import 'package:country_picker/country_picker.dart';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/constant/widget/text_filed.dart';
import 'package:ecommerce/src/provider/database/cloud_storage.dart';
import 'package:ecommerce/src/provider/model/user.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/home/logout_dialog.dart';
import 'package:ecommerce/src/views/profile/help.dart';
import 'package:ecommerce/src/views/profile/privacy.dart';
import 'package:ecommerce/src/views/profile/profile_option.dart';
import 'package:ecommerce/src/views/profile/save_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();

  final ValueNotifier<bool> _editName = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _editAddress = ValueNotifier<bool>(true);
  final ValueNotifier<Country> _initCountry =
      ValueNotifier<Country>(Country.worldWide);

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();
  Map<String, dynamic> country =
      Global.users.country ?? Country.worldWide.toJson();
  @override
  void initState() {
    super.initState();
    _userName.text = Global.users.userName!;
    _email.text = Global.users.email!;
    _address.text = Global.users.address ?? "Add your address";
    _initCountry.value = Country.from(json: country);
  }

  pageClose() {
    if (_address.text != Global.users.address ||
        _userName.text != Global.users.userName ||
        _initCountry.value != Country.from(json: country)) {
      return showDialog(
        context: context,
        builder: (context) => const SaveDialog(),
      ).then(
        (confirmed) async {
          if (confirmed == true) {
            await FirebaseCloudHelper.firebaseCloudHelper.addUser(
              userUid: Global.users.userId!,
              user: Users(
                userId: Global.users.userId!,
                userName: _userName.text,
                email: Global.users.email,
                profileName: _userName.text,
                emailVerified: Global.users.emailVerified,
                url: Global.users.url,
                address: _address.text,
                country: _initCountry.value.toJson(),
              ),
            );
          }
        },
      ).then((value) => true);
    } else {
      return true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _address.dispose();
    _editName.dispose();
    _userName.dispose();
    _addressFocus.dispose();
    _emailFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return pageClose();
      },
      child: Scaffold(
        backgroundColor: ConstColor.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(Global.userImage),
                  ),
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FxText(
                      text: ConstString.name,
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width(context: context) * 0.58,
                      child: ValueListenableBuilder(
                        valueListenable: _editName,
                        builder: (context, value, child) => FxTextFormField(
                          focusNode: _emailFocus,
                          maxLine: 1,
                          readOnly: value,
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          controller: _userName,
                          suffix: IconButton(
                            onPressed: () {
                              _editName.value = !_editName.value;
                              if (value) {
                                _emailFocus.requestFocus();
                              } else {
                                _emailFocus.unfocus();
                              }
                            },
                            style: IconButton.styleFrom(
                                padding: EdgeInsets.zero,
                                maximumSize: Size.zero),
                            icon: Icon(
                              Icons.edit,
                              color:
                                  (value) ? ConstColor.grey : ConstColor.black,
                            ),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(maxHeight: 30, maxWidth: 30),
                          textInputType: TextInputType.name,
                          textStyle: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ConstColor.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FxText(
                      text: ConstString.email,
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width(context: context) * 0.58,
                      child: FxTextFormField(
                        readOnly: true,
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        controller: _email,
                        textInputType: TextInputType.name,
                        textStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: ConstColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FxText(
                      text: ConstString.address,
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width(context: context) * 0.58,
                      child: ValueListenableBuilder(
                        valueListenable: _editAddress,
                        builder: (context, value, child) => FxTextFormField(
                          focusNode: _addressFocus,
                          readOnly: value,
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          controller: _address,
                          textInputType: TextInputType.streetAddress,
                          suffix: IconButton(
                            onPressed: () {
                              _editAddress.value = !_editAddress.value;
                              if (value) {
                                _addressFocus.requestFocus();
                              } else {
                                _addressFocus.unfocus();
                              }
                            },
                            style: IconButton.styleFrom(
                                padding: EdgeInsets.zero,
                                maximumSize: Size.zero),
                            icon: Icon(
                              Icons.edit_location,
                              color:
                                  (value) ? ConstColor.grey : ConstColor.black,
                            ),
                          ),
                          suffixIconConstraints:
                              const BoxConstraints(maxHeight: 30, maxWidth: 30),
                          textStyle: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ConstColor.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FxText(
                      text: ConstString.country,
                      size: 16,
                      color: ConstColor.grey,
                      fontWeight: FontWeight.w600,
                    ),
                    const Spacer(),
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
                            height: 60,
                            padding: const EdgeInsets.all(8.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ConstColor.disable,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: ConstColor.white,
                                  child: FxText(text: value.flagEmoji),
                                ),
                                SizedBox(
                                  width: width(context: context) * 0.04,
                                ),
                                SizedBox(
                                  width: width(context: context) * 0.3,
                                  child: FxText(
                                    maxLines: 1,
                                    textOverflow: TextOverflow.ellipsis,
                                    text: value.displayNameNoCountryCode,
                                    size: 14,
                                    fontWeight: FontWeight.w600,
                                    color: ConstColor.black,
                                  ),
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
                FxText(
                  text: ConstString.settings,
                  size: 20,
                  color: ConstColor.black,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: height(context: context) * 0.02,
                ),
                Container(
                  width: width(context: context),
                  decoration: BoxDecoration(
                    border: Border.all(color: ConstColor.disable, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ProfileOption(
                        onTap: () {},
                        text: ConstString.faqs,
                        icon: Icons.error,
                      ),
                      ProfileOption(
                        onTap: () {
                          context.push(const PrivacyPolicyScreen());
                        },
                        text: ConstString.privacy,
                        icon: Icons.privacy_tip_rounded,
                      ),
                      ProfileOption(
                        onTap: () {
                          context.push(const HelpCenterPage());
                        },
                        text: ConstString.helpCenter,
                        icon: Icons.help_rounded,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: height(context: context) * 0.06,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ConstColor.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const LogoutDialog(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      color: ConstColor.white,
                    ),
                    SizedBox(
                      width: width(context: context) * 0.02,
                    ),
                    FxText(
                      text: ConstString.logout,
                      color: ConstColor.white,
                      size: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
