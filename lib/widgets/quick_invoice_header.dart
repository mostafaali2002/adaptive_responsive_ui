import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Qucik Invoice",
          style: AppStyle.kStyleSemiBold20,
        ),
        Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
        )
      ],
    );
  }
}
