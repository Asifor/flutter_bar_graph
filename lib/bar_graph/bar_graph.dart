import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary; // [sunAmount, tueAmount ... satAmount]
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
      maxY: 200,
      minY: 0,
    ));
  }
}
