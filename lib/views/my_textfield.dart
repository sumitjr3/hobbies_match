import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final input_icon;
  final String hintText;
  final bool obsecure;

  const MyTextField({
    super.key,
    required this.controller,
    required this.input_icon,
    required this.hintText,
    required this.obsecure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            prefixIcon: input_icon,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
