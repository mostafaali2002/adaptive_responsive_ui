import 'package:adaptive_responsive_ui/widgets/all_expenses.dart';
import 'package:adaptive_responsive_ui/widgets/custom_drawer.dart';
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
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: AllExpenses(),
          ),
          Expanded(
            flex: 1,
            child: Column(),
          )
        ],
      ),
    );
  }
}
