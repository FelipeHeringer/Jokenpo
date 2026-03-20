import 'package:flutter/material.dart';

class AppChoice extends StatelessWidget {
  const AppChoice({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, width: 140, height: 140),
        SizedBox(height: 8),
        Text(
          'Escolha do APP',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
