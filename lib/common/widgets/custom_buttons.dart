import 'package:flutter/material.dart';

Widget inkButton({
  required Widget child,
  required Function() onTap,
  Color? color,
  BorderRadius? borderRadius,
}) {
  return Material(
    borderRadius: borderRadius ?? BorderRadius.zero,
    color: color,
    child: InkWell(
      borderRadius: borderRadius ?? BorderRadius.zero,
      onTap: onTap,
      child: Center(child: child),
    ),
  );
}
