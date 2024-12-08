import 'package:adaptive_responsive_ui/models/user_info_model.dart';
import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.icon),
          title: Text(
            userInfoModel.name,
            style: AppStyle.kStyleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.email,
            style: AppStyle.kStyleReguler12,
          ),
        ),
      ),
    );
  }
}
