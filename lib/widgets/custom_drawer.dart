import 'package:adaptive_responsive_ui/models/drawer_item_model.dart';
import 'package:adaptive_responsive_ui/utils/assets.dart';
import 'package:adaptive_responsive_ui/widgets/drawer_item.dart';
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
      child: Column(
        children: [
          const UserInfoTile(
            title: "Lekan Okeowo",
            icon: Assets.drawerImage,
            subtitle: "demo@gmail.com",
          ),
          const SizedBox(height: 8),
          const DrawerItemList(),
          const Expanded(child: SizedBox()),
          DrawerItem(
              drawerItemModel:
                  DrawerItemModel(title: "Setting", icon: Assets.setting),
              isActive: false),
          const SizedBox(height: 15),
          DrawerItem(
              drawerItemModel:
                  DrawerItemModel(title: "Logout", icon: Assets.logout),
              isActive: false),
        ],
      ),
    );
  }
}
