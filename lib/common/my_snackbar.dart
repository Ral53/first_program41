import 'package:flutter/material.dart';

showMySnackBar({
  required BuildContext context,
  required String content,
  Color? color,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: color ?? Colors.green,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
