import 'package:adaptive_responsive_ui/widgets/my_card_section.dart';
import 'package:adaptive_responsive_ui/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            MyCardSection(
                pageController: pageController, currentPage: currentPage),
            const SizedBox(height: 20),
            const Divider(
              height: 2,
              color: Color(0xffF1F1F1),
            ),
            const SizedBox(height: 20),
            const TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
