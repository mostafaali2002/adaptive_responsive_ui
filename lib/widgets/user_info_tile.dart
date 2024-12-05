import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final String icon, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(icon),
        title: Text(
          title,
          style: AppStyle.kStyleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyle.kStyleReguler12,
        ),
      ),
    );
  }
}
