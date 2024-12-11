import 'package:adaptive_responsive_ui/models/income_information_model.dart';
import 'package:adaptive_responsive_ui/widgets/income_information.dart';
import 'package:flutter/material.dart';

class IncomeInformationList extends StatelessWidget {
  const IncomeInformationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        incomInformation.length,
        (index) => IncomeInformation(
          incomeInformationModel: incomInformation[index],
        ),
      ),
    );
  }
}
