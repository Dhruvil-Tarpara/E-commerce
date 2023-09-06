import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final String text;
  const ProfileOption({
    super.key,
    this.onTap,
    this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      splashColor: ConstColor.disable,
      leading: Card(
        color: ConstColor.disable,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: ConstColor.black,
          ),
        ),
      ),
      title: FxText(
        text: text,
        size: 16,
        color: ConstColor.black,
        fontWeight: FontWeight.w600,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 18,
        color: ConstColor.black,
      ),
    );
  }
}
