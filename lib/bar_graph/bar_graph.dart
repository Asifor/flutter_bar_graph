import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bar_graph/bar_graph/bar_data.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary; // [sunAmount, tueAmount ... satAmount]
  const MyBarGraph({
    super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {
    // initialize bar data
    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      tueAmount: weeklySummary[2],
      wedAmount: weeklySummary[3],
      thurAmount: weeklySummary[4],
      friAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    color: Colors.grey[800],
                    width: 25,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey[200],
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
