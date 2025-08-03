import 'package:flutter/material.dart';
import 'package:signup_page/core/Custom_appColors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const CustomButton({
    this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity,50),
                                      backgroundColor: color?? AppColors.blue),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
