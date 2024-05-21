import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/data/line_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final chartData = LineChartDataService();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(Spaces.xxl),
        ),
        color: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      ),
      padding: const EdgeInsets.all(Spaces.defaultPd),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 10),
            child: Text("Steps Overview", style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(height: Spaces.btwSections),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: LineChart(
              LineChartData(
                titlesData: FlTitlesData(
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: _makeBottomTitles(chartData),
                  leftTitles: _makeLeftTitles(chartData),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [_buildMainBarChart(chartData)],
                gridData: const FlGridData(show: false),
                // minY: -1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AxisTitles _makeBottomTitles(LineChartDataService chartData) {
    return AxisTitles(
      sideTitles: SideTitles(
        reservedSize: 30,
        showTitles: true,
        getTitlesWidget: (value, meta) {
          final monthTitle = chartData.monthsTitles[value.toInt() % 12];
          return SideTitleWidget(axisSide: meta.axisSide, child: Text(monthTitle));
        },
      ),
    );
  }

  AxisTitles _makeLeftTitles(LineChartDataService chartData) {
    return AxisTitles(
      sideTitles: SideTitles(
        reservedSize: 32,
        showTitles: true,
        getTitlesWidget: (value, meta) {
          final revenueTitlesLength = chartData.revenueTitles.length;
          final revenueTitle = chartData.revenueTitles[value.toInt() % revenueTitlesLength];
          return revenueTitle != '0'
              ? SideTitleWidget(axisSide: meta.axisSide, child: Text(revenueTitle))
              : const SizedBox.shrink();
        },
      ),
    );
  }

  LineChartBarData _buildMainBarChart(LineChartDataService chartData) {
    return LineChartBarData(
      color: Pallete.tertiary,
      barWidth: 2.5,
      belowBarData: BarAreaData(
        show: true,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Pallete.tertiary.withOpacity(0.5), Colors.transparent],
        ),
      ),
      dotData: const FlDotData(show: false),
      shadow: const Shadow(blurRadius: 5, color: Pallete.tertiary),
      spots: chartData.chartpoints.indexed
          .map((point) => FlSpot(point.$1.toDouble(), point.$2.toDouble()))
          .toList(),
    );
  }
}
