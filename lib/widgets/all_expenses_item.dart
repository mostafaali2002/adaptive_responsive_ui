import 'package:adaptive_responsive_ui/models/all_expenses_model.dart';
import 'package:adaptive_responsive_ui/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.isSelected, required this.expensesModel});
  final bool isSelected;
  final AllExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? InActiveExpensesItem(expensesModel: expensesModel)
        : ExpensesItem(expensesModel: expensesModel);
  }
}
