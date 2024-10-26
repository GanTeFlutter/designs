import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle textSpan1(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Colors.green[600],
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle textSpan2(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        );
  }
}
