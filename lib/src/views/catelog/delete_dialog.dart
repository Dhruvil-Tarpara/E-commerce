import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:flutter/material.dart';

class DeletePermissionDialog extends StatelessWidget {
  const DeletePermissionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: FxText(
        text: ConstString.deleteConfirmation,
        color: ConstColor.black,
        size: 22,
        fontWeight: FontWeight.w600,
      ),
      content: FxText(
        text: ConstString.deleteTitle,
        color: ConstColor.grey,
        size: 16,
      ),
      actions: [
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
            Navigator.of(context).pop(true); // Confirm and close the dialog
          },
          child: FxText(
            text: ConstString.delete,
            color: ConstColor.red,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
