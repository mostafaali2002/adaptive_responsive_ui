import 'package:adaptive_responsive_ui/widgets/all_expenses_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          AllExpensesHeader(header: "Income", monthly: "monthly"),
        ],
      ),
    );
  }
}
