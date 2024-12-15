import 'package:adaptive_responsive_ui/widgets/all_expenses_header.dart';
import 'package:adaptive_responsive_ui/widgets/detailed_incom_chart.dart';
import 'package:adaptive_responsive_ui/widgets/income_information_list.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            AllExpensesHeader(header: "Income", monthly: "monthly"),
            IncomeSectionBody(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Expanded(child: DetailedIncomeChart()),
          // SizedBox(width: 10),
          // Expanded(child: IncomeInformationList()),
        ],
      ),
    );
  }
}
