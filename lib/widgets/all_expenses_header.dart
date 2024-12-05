import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/monthly_header.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
    required this.header,
    required this.monthly,
  });
  final String header, monthly;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: AppStyle.kStyleSemiBold20,
          ),
          MonthlyHeader(monthly: monthly)
        ],
      ),
    );
  }
}
