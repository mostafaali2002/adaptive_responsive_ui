import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class MonthlyHeader extends StatelessWidget {
  const MonthlyHeader({
    super.key,
    required this.monthly,
  });

  final String monthly;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.2))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, right: 12, left: 12),
        child: Row(
          children: [
            Text(
              monthly,
              style: AppStyle.kStyleMeduim16,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff064061),
            )
          ],
        ),
      ),
    );
  }
}
