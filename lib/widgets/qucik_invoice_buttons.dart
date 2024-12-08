import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomButton(
          colorValue: 0xffFFFFFF,
          text: "Add more details",
          style: AppStyle.kStyleSemiBold18,
        ),
        const SizedBox(width: 24),
        CustomButton(
          colorValue: 0xff4EB7F2,
          text: "Send Money",
          style: AppStyle.kStyleSemiBold18.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}