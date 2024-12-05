import 'package:adaptive_responsive_ui/utils/assets.dart';
import 'package:adaptive_responsive_ui/widgets/drawer_item_list.dart';
import 'package:adaptive_responsive_ui/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoTile(
            title: "Lekan Okeowo",
            icon: Assets.drawerImage,
            subtitle: "demo@gmail.com",
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemList(),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
