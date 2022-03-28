import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('A', 30),
      ChartData('B', 70),
    ];
    return SizedBox(
      height: 50,
      width: 70,
      child: SfCircularChart(
          series: <CircularSeries>[
            // Render pie chart
            PieSeries<ChartData, String>(
                dataSource: chartData,
                pointColorMapper:(ChartData data, _) => data.color,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y
            )
          ]
      ),
    );
  }
}
class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}