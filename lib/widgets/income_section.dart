import 'package:adaptive_responsive_ui/widgets/all_expenses_header.dart';
import 'package:adaptive_responsive_ui/widgets/income_chart.dart';
import 'package:adaptive_responsive_ui/widgets/income_information_list.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            AllExpensesHeader(header: "Income", monthly: "monthly"),
            IncomeSectionBody()
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
    return Expanded(
      child: Row(
        children: [
          Expanded(child: IcomeChart()),
          SizedBox(width: 40),
          Expanded(child: IncomeInformationList()),
        ],
      ),
    );
  }
}
