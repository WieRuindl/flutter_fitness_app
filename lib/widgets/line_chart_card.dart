import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/constants/constants.dart';

import 'package:flutter_fitness_app/data/line_chart_data.dart';
import 'package:flutter_fitness_app/widgets/custom_card.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return data.bottomTitle[value.toInt()] != null
                                ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()]
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[400]),
                                ))
                                : const SizedBox();
                          })),
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        // showTitles: true,
                          getTitlesWidget: (value, meta) {
                            return data.leftTitle[value.toInt()] != null
                                ? Text(
                              data.leftTitle[value.toInt()].toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[400]),
                            )
                                : const SizedBox();
                          },
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40)),
                ),
                borderData: FlBorderData(show: false,),
                lineBarsData: [
                  LineChartBarData(
                    color: selectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                      show: true,
                    ),
                    dotData: const FlDotData(show: false),
                    spots: data.spots,
                  )
                ],
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105,
              ),
            ),
          )
        ],
      ),
    );
  }
}
