import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:syncfusion_flutter_charts/charts.dart';

class dataKecil extends StatefulWidget {
  @override
  State<dataKecil> createState() => _dataKecilState();
}

class _dataKecilState extends State<dataKecil> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData(90);
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      // color: Colors.black,
      margin: EdgeInsets.all(6),
      child: Transform(
        // alignment: Alignment.center,
        transform: Matrix4.rotationY(math.pi),
        child: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 233, 233, 233),
                shape: BoxShape.circle,
              ),
            ),
            SfCircularChart(
              margin: EdgeInsets.zero,
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                RadialBarSeries<GDPData, String>(
                    cornerStyle: CornerStyle.bothCurve,
                    innerRadius: '70%',
                    radius: '100%',
                    trackColor: Colors.transparent,
                    trackBorderColor: Colors.white,
                    dataSource: _chartData,
                    xValueMapper: (GDPData data, _) => data.continent,
                    yValueMapper: (GDPData data, _) => data.gdp,
                    sortingOrder: SortingOrder.ascending,
                    enableTooltip: true,
                    maximumValue: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<GDPData> getChartData(int angka) {
    final List<GDPData> chartData = [
      GDPData('Haikal', 90),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
