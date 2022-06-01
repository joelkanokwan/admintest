import 'package:flutter/material.dart';

class MyDialog {
  Future<void> processDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) => WillPopScope(
            child: Center(),
            onWillPop: () async {
              return false;
            }));
  }

  Future<Null> normalDialog(
      BuildContext context, String title, String message) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: Icon(Icons.warning),
          title: Text(title),
          subtitle: Text(message),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))
        ],
      ),
    );
  }
}
