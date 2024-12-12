import 'package:adaptive_responsive_ui/views/mobile_latout_view.dart';
import 'package:adaptive_responsive_ui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: MobileLayoutView(),
        ),
      ],
    );
  }
}
