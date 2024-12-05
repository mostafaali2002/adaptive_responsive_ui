import 'package:adaptive_responsive_ui/models/drawer_item_model.dart';
import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(
        drawerItemModel.title,
        style: isActive
            ? AppStyle.kStyleSemiBold16.copyWith(
                color: const Color(0xff4EB7F2),
              )
            : AppStyle.kStyleSemiBold16,
      ),
      trailing: Container(
        height: 48,
        width: 3,
        color: isActive
            ? const Color(0xff4EB7F2)
            : const Color.fromARGB(0, 171, 114, 114),
      ),
    );
  }
}
