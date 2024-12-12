import 'package:adaptive_responsive_ui/views/desktop_layout_view.dart';
import 'package:adaptive_responsive_ui/views/mobile_latout_view.dart';
import 'package:adaptive_responsive_ui/views/tablet_layout.dart';
import 'package:adaptive_responsive_ui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout({super.key});

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Color(0xffAAAAAA),
              leading: IconButton(
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
            return TabletLayout();
          } else if (constraints.maxWidth > 1200) {
            return DeskTopLayoutView();
          } else {
            return MobileLayoutView();
          }
        },
      ),
    );
  }
}
