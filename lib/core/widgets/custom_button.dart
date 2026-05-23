import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(onPressed: onPressed, child:  Text(
  text,
  style: const TextStyle(color: Colors.white,

    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
),),
    );
  }
}
