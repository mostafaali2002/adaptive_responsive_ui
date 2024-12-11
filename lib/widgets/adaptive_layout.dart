import 'package:adaptive_responsive_ui/views/desktop_layout_view.dart';
import 'package:adaptive_responsive_ui/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600 && constraints.maxWidth < 1300) {
            return Placeholder();
          } else if (constraints.maxWidth > 1300) {
            return DeskTopLayoutView();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}
