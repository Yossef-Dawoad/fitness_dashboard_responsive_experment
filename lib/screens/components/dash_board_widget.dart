import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/screens/widgets/bar_graph_card.dart';
import 'package:flutter/material.dart';

import '../widgets/activity_details_card_view.dart';
import '../widgets/header_widget.dart';
import '../widgets/line_chart_widget.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: Spaces.btwSections),
      child: Column(
        children: [
          SizedBox(height: Spaces.btwItems),
          HeaderWidget(),
          SizedBox(height: Spaces.btwItems),
          ActivityDetailsCardsView(),
          SizedBox(height: Spaces.btwItems),
          LineChartWidget(),
          SizedBox(height: Spaces.btwItems),
          BarGraphCard(),
          SizedBox(height: Spaces.btwItems),
        ],
      ),
    );
  }
}
