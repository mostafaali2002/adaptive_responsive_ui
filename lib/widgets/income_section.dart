import 'package:adaptive_responsive_ui/utils/app_style.dart';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AllExpensesHeader(header: "Income", monthly: "monthly"),
          // Expanded(
          //   child: IcomeChart(),
          // ),
          IncomeInformationList()
        ],
      ),
    );
  }
}
