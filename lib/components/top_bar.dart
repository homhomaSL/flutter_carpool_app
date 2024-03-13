import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final Widget? child;
  const TopBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 133, 216, 234),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: child,
    );
  }
}
