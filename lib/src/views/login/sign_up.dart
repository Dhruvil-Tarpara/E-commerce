// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/constant/widget/text_filed.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/utils/udf/udf.dart';
import 'package:ecommerce/src/utils/udf/validetion.dart';
import 'package:ecommerce/src/views/login/check_user.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _singUpKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformPasswordController =
      TextEditingController();
  final ValueNotifier<AutovalidateMode> _valueNotifier =
      ValueNotifier(AutovalidateMode.disabled);
  final ValueNotifier<bool> _isEmailVerify = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isPasswordVerify = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _isConformVerify = ValueNotifier<bool>(true);

  @override
  void initState() {
    super.initState();
    _valueNotifier.value = AutovalidateMode.disabled;
    _clearController();
  }

  @override
  void dispose() {
    super.dispose();
    _cancelController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          loding: () {
            UDF.showLoadingDialog(context);
          },
          success: () async {
            await HiveHelper.hiveHelper.set(HiveKeys.login, true);
            Navigator.pop(context);
            UDF.fxShowSnackBar(
              context,
              FxText(
                text: ConstString.createAcoount,
                color: ConstColor.green,
                size: 14,
                fontWeight: FontWeight.w400,
              ),
              ConstColor.white,
            );
            Navigator.pushAndRemoveUntil(
              context,
              UDF.pageTransition(page: const CheckUserPage()),
              (route) => false,
            );
          },
          error: (massage) {
            Navigator.pop(context);
            UDF.fxShowSnackBar(
              context,
              FxText(
                text: massage,
                color: ConstColor.red,
                size: 14,
                fontWeight: FontWeight.w400,
              ),
              ConstColor.white,
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: ConstColor.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height(context: context) * 0.16,
                  child: const Center(
                    child: Image(
                      image: AssetImage(Global.logoImage),
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context: context) * 0.02,
                ),
                const FxText(
                  text: ConstString.signUp,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: height(context: context) * 0.01,
                ),
                FxText(
                  text: ConstString.signUpTitle,
                  size: 14,
                  color: ConstColor.grey,
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                ValueListenableBuilder(
                  valueListenable: _valueNotifier,
                  builder: (context, value, child) => Form(
                    autovalidateMode: value,
                    key: _singUpKey,
                    child: Column(
                      children: [
                        FxTextFormField(
                          controller: _userNameController,
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          labelText: FxText(
                            text: ConstString.userName,
                            color: ConstColor.black,
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ConstString.nameError1;
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _isEmailVerify,
                          builder: (context, value, _) => FxTextFormField(
                            controller: _emailController,
                            textInputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            labelText: FxText(
                              text: ConstString.email,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            onChanged: (value) {
                              _isEmailVerify.value =
                                  emailValidation(email: value);
                            },
                            suffix: _isEmailVerify.value
                                ? const Icon(
                                    Icons.verified,
                                    color: Colors.green,
                                  )
                                : null,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ConstString.emailError1;
                              } else if (!emailValidation(
                                  email: _emailController.text)) {
                                return ConstString.emailError2;
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _isPasswordVerify,
                          builder: (context, value, _) => FxTextFormField(
                            controller: _passwordController,
                            textInputType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.next,
                            maxLine: 1,
                            obscureText: _isPasswordVerify.value,
                            suffix: IconButton(
                              focusColor: Colors.transparent,
                              disabledColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onPressed: () {
                                _isPasswordVerify.value =
                                    !_isPasswordVerify.value;
                              },
                              icon: _isPasswordVerify.value
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: ConstColor.grey,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: ConstColor.black,
                                    ),
                            ),
                            labelText: FxText(
                              text: ConstString.password,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ConstString.passwordError1;
                              } else if (!passwordValidation(
                                  password: _passwordController.text)) {
                                return ConstString.passwordError2;
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        ValueListenableBuilder(
                          valueListenable: _isConformVerify,
                          builder: (context, value, _) => FxTextFormField(
                            controller: _conformPasswordController,
                            textInputType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            maxLine: 1,
                            obscureText: _isConformVerify.value,
                            suffix: IconButton(
                              focusColor: Colors.transparent,
                              disabledColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onPressed: () {
                                _isConformVerify.value =
                                    !_isConformVerify.value;
                              },
                              icon: _isConformVerify.value
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: ConstColor.grey,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: ConstColor.black,
                                    ),
                            ),
                            labelText: FxText(
                              text: ConstString.conformPassword,
                              color: ConstColor.black,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ConstString.passwordError1;
                              } else if (value != _passwordController.text) {
                                return ConstString.passwordError3;
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context: context) * 0.04,
                ),
                SizedBox(
                  width: width(context: context),
                  height: height(context: context) * 0.06,
                  child: FxButton(
                    backgroundColor: ConstColor.black,
                    sideColor: ConstColor.black,
                    onPressed: () {
                      _valueNotifier.value = AutovalidateMode.onUserInteraction;
                      if (_singUpKey.currentState!.validate()) {
                        FocusManager.instance.primaryFocus?.unfocus();
                        context.read<LoginBloc>().add(
                              LoginEvent.signUp(
                                email: _emailController.text,
                                password: _passwordController.text,
                                userName: _userNameController.text,
                              ),
                            );
                      }
                    },
                    child: FxText(
                      text: ConstString.login,
                      size: 18,
                      fontWeight: FontWeight.w500,
                      color: ConstColor.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _clearController() {
    _userNameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _conformPasswordController.clear();
  }

  void _cancelController() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _conformPasswordController.dispose();
    _isEmailVerify.dispose();
    _isPasswordVerify.dispose();
    _isConformVerify.dispose();
  }
}
