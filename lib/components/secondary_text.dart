import 'package:flutter/material.dart';

class SecondaryText extends StatelessWidget {
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;
  const SecondaryText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontWeight = FontWeight.w500,
      this.color = const Color.fromARGB(255, 255, 255, 255)});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
