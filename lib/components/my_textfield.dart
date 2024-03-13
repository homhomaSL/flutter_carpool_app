import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  void Function(String)? onSubmitted;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 196, 196, 196)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 196, 196, 196),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 196, 196, 196),
            ),
          )),
    );
  }
}
