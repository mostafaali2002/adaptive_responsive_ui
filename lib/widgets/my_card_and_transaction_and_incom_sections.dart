import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/dots.dart';
import 'package:adaptive_responsive_ui/widgets/my_card_page_view.dart';
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
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24),
            Text(
              "My card",
              style: AppStyle.kStyleSemiBold20,
            ),
            SizedBox(height: 20),
            MyCardPageView(pageController: pageController),
            SizedBox(height: 19),
            Dots(
              currentpage: currentPage,
            ),
            SizedBox(height: 20),
            Divider(
              height: 2,
              color: Color(0xffF1F1F1),
            ),
          ],
        ),
      ),
    );
  }
}
