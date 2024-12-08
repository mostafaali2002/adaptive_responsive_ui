import 'package:adaptive_responsive_ui/models/user_info_model.dart';
import 'package:adaptive_responsive_ui/widgets/user_info_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userInfo.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoTile(
            userInfoModel: userInfo[index],
          ),
        ),
      ),
    );
  }
}
