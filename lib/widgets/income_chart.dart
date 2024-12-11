import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({
    super.key,
  });

  @override
  State<IcomeChart> createState() => _IcomeCartState();
}

class _IcomeCartState extends State<IcomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              value: 40,
              radius: activeIndex == 0 ? 60 : 50,
              showTitle: false,
              color: Color(0xff208CC8),
            ),
            PieChartSectionData(
              value: 25,
              radius: activeIndex == 1 ? 60 : 50,
              showTitle: false,
              color: Color(0xff4EB7F2),
            ),
            PieChartSectionData(
              value: 20,
              radius: activeIndex == 2 ? 60 : 50,
              showTitle: false,
              color: Color(0xff064061),
            ),
            PieChartSectionData(
              value: 22,
              radius: activeIndex == 3 ? 60 : 50,
              showTitle: false,
              color: Color(0xffE2DECD),
            ),
          ]),
    );
  }
}
