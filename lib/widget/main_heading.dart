import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({super.key, required this.mainHeading});
  final String mainHeading;

  @override
  Widget build(BuildContext context) {
    return Text(
      mainHeading,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
