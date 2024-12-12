import 'package:adaptive_responsive_ui/widgets/all_expenses.dart';
import 'package:adaptive_responsive_ui/widgets/my_card_and_transaction_and_incom_sections.dart';
import 'package:flutter/material.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          MyCardAndTransactionAndIncomSections()
        ],
      ),
    );
  }
}
