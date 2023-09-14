import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:flutter/material.dart';

class SaveDialog extends StatelessWidget {
  const SaveDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: FxText(
        text: ConstString.saveChanges,
        color: ConstColor.black,
        size: 22,
        fontWeight: FontWeight.w600,
      ),
      content: FxText(
        text: ConstString.saveChangesTitle,
        color: ConstColor.grey,
        size: 16,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false); // Cancel the dialog
          },
          child: FxText(
            text: ConstString.discard,
            color: ConstColor.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () async {
            Navigator.of(context).pop(true); // Conform the dialog
          },
          child: FxText(
            text: ConstString.save,
            color: ConstColor.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
