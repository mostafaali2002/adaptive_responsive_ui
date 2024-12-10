import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyle.kStyleSemiBold20,
        ),
        Text(
          "See all",
          style:
              AppStyle.kStyleMeduim16.copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
