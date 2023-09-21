import 'package:e_learning_platform/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

//custom text widgets
Widget text24Normal({String text = '', Color color = AppColors.primaryText}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 24,
      color: color,
      fontWeight: FontWeight.normal,
    ).copyWith(),
  );
}

Widget text16Normal(
    {String text = '',
    TextAlign textAlign = TextAlign.center,
    Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.normal,
    ).copyWith(),
  );
}
