import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/data/bar_graph_data.dart';
import 'package:fitness_dashboard_responsive/models/graph_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphDataService();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final isMobile = MediaQuery.sizeOf(context).width < 920;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
        childAspectRatio: 5 / 4,
      ),
      itemCount: barGraphData.data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final barGraphModel = barGraphData.data[index];
        return Container(
          decoration: ShapeDecoration(
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(Spaces.xxl)),
            color: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
          ),
          padding: const EdgeInsets.all(Spaces.defaultPd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(barGraphModel.label, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: Spaces.btwItems),
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _makeChartGroups(barGraphModel),
                    borderData: FlBorderData(border: const Border()),
                    gridData: const FlGridData(show: false),
                    titlesData: FlTitlesData(
                      show: false,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) => Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              barGraphModel.label,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _makeChartGroups(BarGraphModel barGraphModel) {
    return barGraphModel.points
        .map((p) => BarChartGroupData(x: p.x.toInt(), barRods: [
              BarChartRodData(
                toY: p.y,
                width: 12,
                color: barGraphModel.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3.0),
                  topRight: Radius.circular(3.0),
                ),
              )
            ]))
        .toList();
  }
}
