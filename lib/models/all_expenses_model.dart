import 'package:adaptive_responsive_ui/utils/assets.dart';

class AllExpensesModel {
  final String date, price, type, icon;

  const AllExpensesModel({
    required this.date,
    required this.price,
    required this.type,
    required this.icon,
  });
}

List<AllExpensesModel> allExpenses = const [
  AllExpensesModel(
      date: "April 2022",
      icon: Assets.expensesicon3,
      price: r"$20,129",
      type: "Balance"),
  AllExpensesModel(
      date: "April 2022",
      icon: Assets.expensesicon2,
      price: r"$20,129",
      type: "Income"),
  AllExpensesModel(
      date: "April 2022",
      icon: Assets.expensesicon1,
      price: r"$20,129",
      type: "Expenses"),
];
