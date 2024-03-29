import 'package:flutter/material.dart';

class FxButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color sideColor;
  final double? elevation;
  const FxButton({
    super.key,
    this.onPressed,
    required this.child,
    required this.backgroundColor,
    required this.sideColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
            side: BorderSide(
              color: sideColor,
              width: 2,
            ),
          ),
        ),
        elevation: MaterialStatePropertyAll(elevation),
        minimumSize: const MaterialStatePropertyAll(Size.zero),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      ),
      child: child,
    );
  }
}
