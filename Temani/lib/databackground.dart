import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:syncfusion_flutter_charts/charts.dart';

class dataBackground extends StatefulWidget {
  @override
  State<dataBackground> createState() => _dataBackgroundState();
}

class _dataBackgroundState extends State<dataBackground> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(math.pi),
      child: Container(
        height: 150,
        color: Colors.transparent,
        child: SfCircularChart(
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            RadialBarSeries<GDPData, String>(
                cornerStyle: CornerStyle.bothCurve,
                // radius: '80%',
                trackColor: Colors.transparent,
                gap: '12%',
                trackBorderColor: Colors.white,
                dataSource: _chartData,
                xValueMapper: (GDPData data, _) => data.continent,
                yValueMapper: (GDPData data, _) => data.gdp,
                pointColorMapper: (GDPData data, _) => data.pointColor,
                sortingOrder: SortingOrder.ascending,
                enableTooltip: true,
                maximumValue: 100),
          ],
        ),
      ),
    ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Haikal', 75, Color(0xFFC4C4C4)),
      GDPData('Hilmi', 75, Color(0xFFC4C4C4)),
      GDPData('Daniyal', 75, Color(0xFFC4C4C4)),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.pointColor);
  final String continent;
  final int gdp;
  final Color pointColor;
}
