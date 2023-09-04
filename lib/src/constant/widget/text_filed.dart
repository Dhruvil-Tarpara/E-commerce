import 'package:flutter/material.dart';

class FxTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final Widget? labelText;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxLine;
  final TextStyle? textStyle;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? readOnly;

  const FxTextFormField({
    super.key,
    this.controller,
    required this.textInputType,
    this.hintText,
    this.validator,
    this.labelText,
    this.obscureText,
    this.suffix,
    this.maxLine,
    this.textStyle,
    this.onChanged,
    this.readOnly,
    this.prefix,
    this.onTap, this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onChanged: onChanged,
      onTap: onTap,
      style: textStyle,
      maxLines: maxLine,
      obscureText: obscureText ?? false,
      controller: controller,
      keyboardType: textInputType,
   textInputAction: textInputAction,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefix,
        hintText: hintText,
        label: labelText,
        suffixIcon: suffix,
      ),
    );
  }
}