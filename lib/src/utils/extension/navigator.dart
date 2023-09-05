import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension NavigatorExtensions on BuildContext {
  Future<T?> push<T>(Widget route) => Navigator.push<T>(
        this,
        PageRouteBuilder(
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
            return route;
          },
        ),
      );
  Future<T?> pushAndRemoveUntil<T>(Widget route, bool predicate) =>
      Navigator.pushAndRemoveUntil<T>(
        this,
        PageRouteBuilder(
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
            return route;
          },
        ),
        (route) => predicate,
      );
  void pop<T>([T? result]) => Navigator.pop(this);
}
