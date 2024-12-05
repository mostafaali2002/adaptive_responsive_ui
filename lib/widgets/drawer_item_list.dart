import 'package:adaptive_responsive_ui/models/drawer_item_model.dart';
import 'package:adaptive_responsive_ui/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

int current = 0;

class _DrawerItemListState extends State<DrawerItemList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          drawerItem.length,
          (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    current = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: DrawerItem(
                    drawerItemModel: drawerItem[index],
                    isActive: current == index,
                  ),
                ),
              )),
    );
  }
}
