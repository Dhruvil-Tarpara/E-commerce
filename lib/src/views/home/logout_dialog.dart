import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/login/login_bloc.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/hive/hive.dart';
import 'package:ecommerce/src/utils/hive/hive_key.dart';
import 'package:ecommerce/src/views/login/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: FxText(
        text: ConstString.logoutTitle,
        color: ConstColor.black,
        size: 22,
        fontWeight: FontWeight.w600,
      ),
      content: FxText(
        text: ConstString.logoutMassage,
        color: ConstColor.grey,
        size: 16,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false); // Cancel the dialog
          },
          child: FxText(
            text: ConstString.cancel,
            color: ConstColor.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () async {
            Navigator.of(context).pop(true);
            BlocProvider.of<LoginBloc>(context).add(const LoginEvent.logOut());
            await HiveHelper.hiveHelper.set(HiveKeys.login, false).then(
                  (value) =>
                      (context).pushAndRemoveUntil(const OptionPage(), false),
                ); // Confirm and close the dialog
          },
          child: FxText(
            text: ConstString.logout,
            color: ConstColor.red,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
