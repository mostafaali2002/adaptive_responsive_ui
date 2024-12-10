class TransactionModel {
  final String title, subtitle, trail;
  final int color;

  const TransactionModel({
    required this.title,
    required this.subtitle,
    required this.trail,
    this.color = 0xff7DD97B,
  });
}

List<TransactionModel> transactionItem = const [
  TransactionModel(
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022 ",
      trail: r"$20,129",
      color: 0xffF3735E),
  TransactionModel(
      title: "Landing Page project",
      subtitle: "13 Apr, 2022 at 3:30 PM ",
      trail: r"$2,000"),
  TransactionModel(
      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      trail: r"$20,129"),
];
