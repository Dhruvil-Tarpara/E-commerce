import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/button.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/constant/widget/text_filed.dart';
import 'package:ecommerce/src/provider/obscure_cubit.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/utils/validetion.dart';
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
  @override
  void initState() {
    super.initState();
    _valueNotifier.value = AutovalidateMode.disabled;
  }

  @override
  void dispose() {
    super.dispose();
    _cancelController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginPassword>(
      create: (context) => LoginPassword(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ConstColor.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (context, value, child) => Form(
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
                      height: height(context: context) * 0.02,
                    ),
                    FxTextFormField(
                      controller: _emailController,
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      labelText: FxText(
                        text: ConstString.email,
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
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
                    SizedBox(
                      height: height(context: context) * 0.01,
                    ),
                    FxTextFormField(
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
                      // obscureText: context.watch<LoginPassword>().state,
                      suffix: IconButton(
                        focusColor: Colors.transparent,
                        disabledColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          //  context.read<LoginPassword>().upDateObscureText();
                        },
                        icon:
                            // context.watch<LoginPassword>().state
                            //     ? Icon(
                            //         Icons.visibility_off,
                            //         color: ConstColor.grey,
                            //       )
                            //     :
                            Icon(
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
                          _valueNotifier.value =
                              AutovalidateMode.onUserInteraction;
                          if (_loginKey.currentState!.validate()) {}
                        },
                        child: FxText(
                          text: ConstString.login,
                          size: 18,
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
                        onPressed: () {},
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
                              size: 18,
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
                        onPressed: () {},
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
                              size: 18,
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
                        onPressed: () {},
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
                              size: 18,
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
    );
  }

  void _clearController() {
    _emailController.clear();
    _passwordController.clear();
  }

  void _cancelController() {
    _emailController.dispose();
    _passwordController.dispose();
  }
}
