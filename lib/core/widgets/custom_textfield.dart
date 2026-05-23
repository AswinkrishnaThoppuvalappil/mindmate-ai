import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final bool obscuretext;
  final TextEditingController controller;
  const CustomTextfield({
    super.key,
    required this.hintText,
    this.obscuretext=false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText:obscuretext,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white10,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}
