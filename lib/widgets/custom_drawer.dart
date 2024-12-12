import 'package:adaptive_responsive_ui/models/drawer_item_model.dart';
import 'package:adaptive_responsive_ui/models/user_info_model.dart';
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
        width: MediaQuery.sizeOf(context).width * 0.7,
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: UserInfoTile(
                userInfoModel: UserInfoModel(
                    icon: Assets.drawerImage,
                    name: "Lekan Okeowo",
                    email: "demo@gmail.com"),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 8)),
            const SliverToBoxAdapter(child: DrawerItemList()),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  DrawerItem(
                      drawerItemModel: DrawerItemModel(
                          title: "Setting", icon: Assets.setting),
                      isActive: false),
                  const SizedBox(height: 15),
                  DrawerItem(
                      drawerItemModel:
                          DrawerItemModel(title: "Logout", icon: Assets.logout),
                      isActive: false),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ));
  }
}
