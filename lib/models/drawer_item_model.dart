import 'package:adaptive_responsive_ui/utils/assets.dart';

class DrawerItemModel {
  final String title, icon;

  DrawerItemModel({
    required this.title,
    required this.icon,
  });
}

List<DrawerItemModel> drawerItem = [
  DrawerItemModel(
    title: "Dashboard",
    icon: Assets.dashboardIcon,
  ),
  DrawerItemModel(title: "My Transaction", icon: Assets.mytransactionIcon),
  DrawerItemModel(title: "Statistics", icon: Assets.statisticIcon),
  DrawerItemModel(title: "Wallet Account", icon: Assets.walletIcon),
  DrawerItemModel(title: "My Investments", icon: Assets.investmentIcon),
];
