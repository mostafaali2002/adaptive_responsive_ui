import 'package:adaptive_responsive_ui/widgets/income_section.dart';
import 'package:adaptive_responsive_ui/widgets/mycard_and_transaction_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionAndIncomSections extends StatefulWidget {
  const MyCardAndTransactionAndIncomSections({
    super.key,
  });

  @override
  State<MyCardAndTransactionAndIncomSections> createState() =>
      _MyCardAndTransactionAndIncomSectionsState();
}

class _MyCardAndTransactionAndIncomSectionsState
    extends State<MyCardAndTransactionAndIncomSections> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.toInt();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardAndTransactionSection(
            pageController: pageController, currentPage: currentPage),
        const SizedBox(height: 20),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
