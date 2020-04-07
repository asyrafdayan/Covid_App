import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CovidLineChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      // Chart title
      title: ChartTitle(text: 'Covid Infection Trend'),
      // Enable legend
      legend: Legend(isVisible: false),
      // Enable tooltip
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries<SalesData, String>>[
        LineSeries<SalesData, String>(
            dataSource: <SalesData>[
              SalesData('05/04/2020', 3305),
              SalesData('06/04/2020', 3400),
              SalesData('07/04/2020', 3700)
            ],
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            // Enable data label
            dataLabelSettings: DataLabelSettings(isVisible: true)
        )
      ]
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}