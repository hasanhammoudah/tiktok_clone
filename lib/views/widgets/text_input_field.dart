import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key,
      this.controller,
      this.labelText,
      this.icon,
      this.obscureText = false});

  final TextEditingController? controller;
  final String? labelText;
  final IconData? icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(
          fontSize: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
