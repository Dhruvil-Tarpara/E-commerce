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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ValueNotifier<AutovalidateMode> _valueNotifier =
      ValueNotifier(AutovalidateMode.disabled);
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _isEmailVerify = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isPasswordVerify = ValueNotifier<bool>(true);
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
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ConstColor.white,
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.whenOrNull(
              loding: () {
                UDF.showLoadingDialog(context);
              },
              success: () async {
                await HiveHelper.hiveHelper.set(HiveKeys.login, true);
                Navigator.pop(context);
                Navigator.pushAndRemoveUntil(
                    context,
                    UDF.pageTransition(page: const CheckUserPage()),
                    (route) => false);
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
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ValueListenableBuilder(
                valueListenable: _valueNotifier,
                builder: (context, value, _) => Form(
                  autovalidateMode: value,
                  key: _loginKey,
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
                      FxText(
                        text: ConstString.loginTitle,
                        size: 24,
                        fontWeight: FontWeight.w600,
                        color: ConstColor.black,
                      ),
                      FxText(
                        text: ConstString.loginSubtitle,
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: ConstColor.grey,
                      ),
                      SizedBox(
                        height: height(context: context) * 0.04,
                      ),
                      ValueListenableBuilder<bool>(
                        valueListenable: _isEmailVerify,
                        builder: (context, valueData, _) => FxTextFormField(
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
                          textInputAction: TextInputAction.done,
                          labelText: FxText(
                            text: ConstString.password,
                            color: ConstColor.black,
                            size: 14,
                            fontWeight: FontWeight.w500,
                          ),
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
                        height: height(context: context) * 0.06,
                      ),
                      SizedBox(
                        width: width(context: context),
                        height: height(context: context) * 0.06,
                        child: FxButton(
                          backgroundColor: ConstColor.black,
                          sideColor: ConstColor.black,
                          onPressed: () {
                            _valueNotifier.value =
                                AutovalidateMode.onUserInteraction;
                            if (_loginKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              context.read<LoginBloc>().add(
                                    LoginEvent.login(
                                      email: _emailController.text,
                                      password: _passwordController.text,
                                    ),
                                  );
                            }
                          },
                          child: FxText(
                            text: ConstString.login,
                            size: 16,
                            fontWeight: FontWeight.w500,
                            color: ConstColor.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height(context: context) * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width(context: context) * 0.4,
                            child: const Divider(
                              thickness: 2,
                            ),
                          ),
                          FxText(
                            text: ConstString.and,
                            size: 14,
                            color: ConstColor.black,
                          ),
                          SizedBox(
                            width: width(context: context) * 0.4,
                            child: const Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height(context: context) * 0.02,
                      ),
                      SizedBox(
                        width: width(context: context),
                        height: height(context: context) * 0.06,
                        child: FxButton(
                          backgroundColor: ConstColor.blue,
                          sideColor: ConstColor.blue,
                          onPressed: () {
                            UDF.fxShowSnackBar(
                              context,
                              FxText(
                                text: ConstString.errorMassage,
                                color: ConstColor.red,
                                size: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              ConstColor.white,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: const AssetImage(Global.facebookIcon),
                                height: height(context: context) * 0.03,
                              ),
                              SizedBox(
                                width: width(context: context) * 0.02,
                              ),
                              FxText(
                                text: ConstString.facebook,
                                size: 16,
                                fontWeight: FontWeight.w500,
                                color: ConstColor.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height(context: context) * 0.02,
                      ),
                      SizedBox(
                        width: width(context: context),
                        height: height(context: context) * 0.06,
                        child: FxButton(
                          backgroundColor: ConstColor.white,
                          sideColor: ConstColor.grey,
                          onPressed: () {
                            context.read<LoginBloc>().add(
                                  const LoginEvent.googleLogin(),
                                );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: const AssetImage(Global.googleIcon),
                                height: height(context: context) * 0.02,
                              ),
                              SizedBox(
                                width: width(context: context) * 0.02,
                              ),
                              FxText(
                                text: ConstString.google,
                                size: 16,
                                fontWeight: FontWeight.w500,
                                color: ConstColor.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height(context: context) * 0.02,
                      ),
                      SizedBox(
                        width: width(context: context),
                        height: height(context: context) * 0.06,
                        child: FxButton(
                          backgroundColor: ConstColor.white,
                          sideColor: ConstColor.grey,
                          onPressed: () {
                            UDF.fxShowSnackBar(
                              context,
                              FxText(
                                text: ConstString.errorMassage,
                                color: ConstColor.red,
                                size: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              ConstColor.white,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: const AssetImage(Global.appleIcon),
                                height: height(context: context) * 0.02,
                              ),
                              SizedBox(
                                width: width(context: context) * 0.02,
                              ),
                              FxText(
                                text: ConstString.apple,
                                size: 16,
                                fontWeight: FontWeight.w500,
                                color: ConstColor.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _clearController() {
    _emailController.clear();
    _passwordController.clear();
  }

  void _cancelController() {
    _emailController.dispose();
    _passwordController.dispose();
    _isEmailVerify.dispose();
    _isPasswordVerify.dispose();
  }
}
