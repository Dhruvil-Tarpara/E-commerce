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

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  GlobalKey<FormState> _singUpKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conformPasswordController =
      TextEditingController();
  final ValueNotifier<AutovalidateMode> _valueNotifier =
      ValueNotifier(AutovalidateMode.disabled);

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
                          textInputAction: TextInputAction.next,
                          //obscureText: context.watch<SignUpPassword>().state,
                          maxLine: 1,
                          suffix: IconButton(
                            focusColor: Colors.transparent,
                            disabledColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onPressed: () {
                              //   context.read<SignUpPassword>().upDateObscureText();
                            },
                            icon:
                                // context.watch<SignUpPassword>().state
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
                        SizedBox(
                          height: height(context: context) * 0.01,
                        ),
                        FxTextFormField(
                          controller: _conformPasswordController,
                          textInputType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          // obscureText: context.watch<ConformPassword>().state,
                          maxLine: 1,
                          suffix: IconButton(
                            focusColor: Colors.transparent,
                            disabledColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onPressed: () {
                              //    context.read<ConformPassword>().upDateObscureText();
                            },
                            icon:
                                // context.watch<ConformPassword>().state
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
                      if (_singUpKey.currentState!.validate()) {}
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
    _emailController.clear();
    _passwordController.clear();
  }

  void _cancelController() {
    _emailController.dispose();
    _passwordController.dispose();
  }
}
