import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';

class UDF {
  /// Animation for page transition.
  static PageRouteBuilder pageTransition({required Widget page}) {
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          alignment: Alignment.center,
          scale: Tween<double>(begin: 0, end: 1).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return page;
      },
    );
  }

  /// Loding dialog.
  static Future<void> showLoadingDialog(BuildContext context) =>
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            child: SizedBox(
              height: height(context: context) * 0.08,
              child: Center(
                child: CircularProgressIndicator.adaptive(
                  backgroundColor: ConstColor.white,
                  valueColor: AlwaysStoppedAnimation<Color?>(ConstColor.black),
                ),
              ),
            ),
          );
        },
      );

  /// SnackBar
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      fxShowSnackBar(
              BuildContext context, Widget content, Color? backgroundColor) =>
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: content,
              behavior: SnackBarBehavior.floating,
              backgroundColor: backgroundColor,
            ),
          );
}
