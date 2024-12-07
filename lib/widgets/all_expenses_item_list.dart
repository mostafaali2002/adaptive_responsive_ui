import 'package:adaptive_responsive_ui/models/all_expenses_model.dart';
import 'package:adaptive_responsive_ui/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

int current = 0;

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpenses
          .asMap()
          .entries
          .map((e) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      current = e.key;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      expensesModel: allExpenses[e.key],
                      isSelected: current == e.key,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
