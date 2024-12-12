import 'package:adaptive_responsive_ui/widgets/all_expenses.dart';
import 'package:adaptive_responsive_ui/widgets/custom_drawer.dart';
import 'package:adaptive_responsive_ui/widgets/my_card_and_transaction_and_incom_sections.dart';
import 'package:flutter/material.dart';

class DeskTopLayoutView extends StatelessWidget {
  const DeskTopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(
        children: [
          Expanded(
            child: CustomDrawer(),
          ),
          SizedBox(width: 32),
          Expanded(
              flex: 3,
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: AllExpenses(),
                        ),
                        SizedBox(width: 24),
                        Expanded(
                          child: MyCardAndTransactionAndIncomSections(),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
