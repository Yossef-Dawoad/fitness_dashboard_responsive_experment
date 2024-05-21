import 'package:fitness_dashboard_responsive/screens/components/navigation_rail.dart';
import 'package:flutter/material.dart';
import '../components/dash_board_widget.dart';
import '../components/summary_widget.dart';

class TabletMainPage extends StatelessWidget {
  const TabletMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Expanded(flex: 2, child: SideMenuWidget()),
        SideNavRail(),
        Expanded(flex: 7, child: SingleChildScrollView(child: DashBoardWidget())),
        Expanded(flex: 3, child: SummaryWidget()),
      ],
    );
  }
}
