import 'package:flutter/material.dart';

class TextRegular14 extends StatelessWidget {
  const TextRegular14({super.key, required this.textRegular14});
  final String textRegular14;

  @override
  Widget build(BuildContext context) {
    return Text(
      textRegular14,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
