import 'package:adaptive_responsive_ui/models/income_information_model.dart';
import 'package:adaptive_responsive_ui/utils/app_style.dart';
import 'package:flutter/material.dart';

class IncomeInformation extends StatelessWidget {
  const IncomeInformation({
    super.key,
    required this.incomeInformationModel,
  });
  final IncomeInformationModel incomeInformationModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: incomeInformationModel.color,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            incomeInformationModel.title,
            style: AppStyle.kStyleReguler16,
          ),
          const Expanded(child: SizedBox()),
          Text(
            incomeInformationModel.percent,
            style: AppStyle.kStyleMeduim16,
          ),
        ],
      ),
    );
  }
}
