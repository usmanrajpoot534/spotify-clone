import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double height;

  const AppButton({
    required this.title,
    this.onPressed,
    this.height = 80,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: Size.fromHeight(height),
      ),
      child: Text(title),
    );
  }
}
