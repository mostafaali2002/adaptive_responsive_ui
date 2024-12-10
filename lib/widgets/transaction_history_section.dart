import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/transaction_history_header.dart';
import 'package:adaptive_responsive_ui/widgets/transcation_history_list.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyle.kStyleMeduim16.copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 16),
        TransactionHistoryList(),
      ],
    );
  }
}
