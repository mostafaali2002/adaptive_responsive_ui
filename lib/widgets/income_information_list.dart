import 'package:adaptive_responsive_ui/models/income_information_model.dart';
import 'package:adaptive_responsive_ui/widgets/income_information.dart';
import 'package:flutter/material.dart';

class IncomeInformationList extends StatelessWidget {
  const IncomeInformationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: incomInformation
          .map((e) => IncomeInformation(incomeInformationModel: e))
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: incomInformation.length,
    //   itemBuilder: (context, index) {
    //     return IncomeInformation(incomeInformationModel: incomInformation[index]);
    //   },
    // );
  }
}
