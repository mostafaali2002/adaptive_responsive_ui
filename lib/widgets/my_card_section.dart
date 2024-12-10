import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:adaptive_responsive_ui/widgets/dots.dart';
import 'package:adaptive_responsive_ui/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My card",
          style: AppStyle.kStyleSemiBold20,
        ),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 19),
        Dots(
          currentpage: currentPage,
        ),
      ],
    );
  }
}
