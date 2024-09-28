import 'package:flutter/material.dart';

class FloatingSnackBar {
  static void show(BuildContext context, String message, {Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text(message)),
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor ?? Colors.red,
        duration: Duration(seconds: 3),
        margin: EdgeInsets.all(16),
      ),
    );
  }
}
