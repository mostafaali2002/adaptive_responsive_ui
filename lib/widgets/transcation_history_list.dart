import 'package:adaptive_responsive_ui/models/transaction_model.dart';
import 'package:adaptive_responsive_ui/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          transactionItem.length,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TransactionListTile(
                  transactionModel: transactionItem[index],
                ),
              )),
    );
  }
}
