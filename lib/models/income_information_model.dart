import 'package:flutter/material.dart';

class IncomeInformationModel {
  final String title, percent;
  final Color color;

  const IncomeInformationModel({
    required this.title,
    required this.percent,
    required this.color,
  });
}

List<IncomeInformationModel> incomInformation = const [
  IncomeInformationModel(
      title: "Design service", percent: "40%", color: Color(0xff208CC8)),
  IncomeInformationModel(
      title: "Design product", percent: "25%", color: Color(0xff4EB7F2)),
  IncomeInformationModel(
      title: "Product royalti", percent: "20%", color: Color(0xff064061)),
  IncomeInformationModel(
      title: "Other", percent: "22%", color: Color(0xffE2DECD)),
];
