import 'package:adaptive_responsive_ui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DeskTopLayoutView extends StatelessWidget {
  const DeskTopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [Text("data")],
            ),
          )
        ],
      ),
    );
  }
}
