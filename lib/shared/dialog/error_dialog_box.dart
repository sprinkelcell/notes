import 'package:flutter/material.dart';
import 'package:notes/model/error_dialog.model.dart';

Future<bool> errorDialogBox(BuildContext context, ErrorDialogModel model) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(model.title),
          content: Text(model.content),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(model.falseButtonText)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text(model.trueButtonText)),
          ],
        );
      }).then((value) => value ?? false);
}
