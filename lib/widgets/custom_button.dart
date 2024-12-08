import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.colorValue,
    required this.text,
    this.style,
  });
  final int colorValue;
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            const EdgeInsets.only(right: 75, left: 75, top: 20, bottom: 20),
        decoration: BoxDecoration(
          color: Color(colorValue),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
