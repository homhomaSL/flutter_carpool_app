import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String text;
  const PrimaryText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.w600,
    this.color = const Color.fromARGB(255, 13, 31, 45),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
