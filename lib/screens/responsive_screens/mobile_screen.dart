import 'package:fitness_dashboard_responsive/screens/components/bottom_nav.dart';
import 'package:flutter/material.dart';
import '../components/dash_board_widget.dart';
import '../components/summary_widget.dart';

class MobileMainPage extends StatelessWidget {
  const MobileMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DashBoardWidget(),
            SummaryWidget(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
