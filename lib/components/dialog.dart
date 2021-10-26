import 'package:album_app/constants.dart';
import 'package:flutter/material.dart';

class CommonDialogs {
  static Future showInformationalDialog(BuildContext context, String title, String content) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title, 
            style: const TextStyle(
              color: kNormalColor,
              fontWeight: FontWeight.bold,
              fontSize: kHeaderFontSize
            ),
          ),
          content: Text(
            content, 
            style: const TextStyle(
              color: kNormalColor,
              fontWeight: FontWeight.bold,
              fontSize: kBodyFontSize3
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}