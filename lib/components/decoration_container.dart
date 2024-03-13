import 'package:flutter/material.dart';

class DecorationContainer extends StatelessWidget {
  final Color? color;
  final Widget? child;
  const DecorationContainer({
    super.key,
    required this.child,
    this.color = const Color.fromARGB(255, 255, 255, 255),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: child,
    );
  }
}
