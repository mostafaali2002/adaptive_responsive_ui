import 'package:adaptive_responsive_ui/widgets/all_expenses_section.dart';
import 'package:adaptive_responsive_ui/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesSection(),
        SizedBox(height: 24),
        QuickInVoice(),
      ],
    );
  }
}
