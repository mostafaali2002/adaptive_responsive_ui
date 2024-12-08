import 'package:adaptive_responsive_ui/utils/assets.dart';

class UserInfoModel {
  final String icon, name, email;

  const UserInfoModel(
      {required this.icon, required this.name, required this.email});
}

List<UserInfoModel> userInfo = const [
  UserInfoModel(
      icon: Assets.drawerImage,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail"),
  UserInfoModel(
      icon: Assets.drawerImage,
      name: "Josua Nunito",
      email: "Josh Nunito@gmail.com"),
  UserInfoModel(
      icon: Assets.drawerImage,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail"),
  UserInfoModel(
      icon: Assets.drawerImage,
      name: "Madrani Andi",
      email: "Madraniadi20@gmail"),
];
