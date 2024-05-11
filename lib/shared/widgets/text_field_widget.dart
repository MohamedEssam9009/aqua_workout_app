import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  });

  final String labelText, hintText;
  bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Color(0xFF707070),
            fontSize: 18.0,
          ),
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
