import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSelectionsDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '45.02',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.8,
                      ),
                ),
                Text('of 128GB'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

var pieChartSelectionsDatas = [
  PieChartSectionData(
    color: primaryColor,
    value: 10,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 22,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 29,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 9,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
