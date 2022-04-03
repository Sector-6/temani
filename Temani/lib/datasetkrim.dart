import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:syncfusion_flutter_charts/charts.dart';

class dataSetKrim extends StatefulWidget {
  @override
  State<dataSetKrim> createState() => _dataSetKrimState();
}

class _dataSetKrimState extends State<dataSetKrim> {
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
        height: 180,
        color: Colors.transparent,
        child: SfCircularChart(
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            RadialBarSeries<GDPData, String>(
                cornerStyle: CornerStyle.bothCurve,
                // radius: '80%',
                trackColor: Colors.transparent,
                // gap: '12%',
                trackBorderColor: Colors.white,
                dataSource: _chartData,
                xValueMapper: (GDPData data, _) => data.continent,
                yValueMapper: (GDPData data, _) => data.gdp,
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
      GDPData('Haikal', 55),
      GDPData('Hilmi', 0),
      GDPData('Daniyal', 42),
      GDPData('Daniyalu', 0),
      GDPData('Daniyala', 68),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
