import 'package:adaptive_responsive_ui/models/transaction_model.dart';
import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          transactionModel.title,
          style: AppStyle.kStyleSemiBold16,
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          transactionModel.subtitle,
          style: AppStyle.kStyleReguler16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ),
      trailing: Text(
        transactionModel.trail,
        style: AppStyle.kStyleSemiBold20
            .copyWith(color: Color(transactionModel.color)),
      ),
    );
  }
}
