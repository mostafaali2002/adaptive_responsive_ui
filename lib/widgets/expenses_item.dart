import 'package:adaptive_responsive_ui/models/all_expenses_model.dart';
import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.expensesModel,
  });
  final AllExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue[400],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              isActive: true,
              icon: expensesModel.icon,
            ),
            const SizedBox(height: 34),
            Text(expensesModel.type,
                style: AppStyle.kStyleSemiBold16.copyWith(color: Colors.white)),
            const SizedBox(height: 8),
            Text(expensesModel.date,
                style: AppStyle.kStyleReguler14
                    .copyWith(color: const Color(0xffFAFAFA))),
            const SizedBox(height: 16),
            Text(expensesModel.price,
                style: AppStyle.kStyleSemiBold24.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensesModel,
  });
  final AllExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              isActive: false,
              icon: expensesModel.icon,
            ),
            const SizedBox(height: 34),
            Text(expensesModel.type, style: AppStyle.kStyleSemiBold16),
            const SizedBox(height: 8),
            Text(expensesModel.date, style: AppStyle.kStyleReguler14),
            const SizedBox(height: 16),
            Text(expensesModel.price, style: AppStyle.kStyleSemiBold24),
          ],
        ),
      ),
    );
  }
}
