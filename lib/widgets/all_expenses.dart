import 'package:adaptive_responsive_ui/widgets/all_expenses_header.dart';
import 'package:adaptive_responsive_ui/widgets/all_expenses_item_list.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Container(
        color: Colors.white,
        child: const Column(
          children: [
            AllExpensesHeader(
              header: "All Expenses",
              monthly: "Monthly",
            ),
            SizedBox(height: 16),
            AllExpensesItemList(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
