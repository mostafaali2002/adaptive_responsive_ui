import 'package:adaptive_responsive_ui/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.currentpage});
  final int currentpage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: index == currentpage),
        ),
      ),
    );
  }
}
