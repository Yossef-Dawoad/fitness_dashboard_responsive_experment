import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/screens/widgets/scheduled_tasks.dart';
import 'package:fitness_dashboard_responsive/screens/widgets/summary_details.dart';
import 'package:flutter/material.dart';

import '../widgets/pie_chart.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spaces.xs),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Spaces.defaultPd),
            const PieChartWidget(),
            const SizedBox(height: Spaces.defaultPd * 2),
            Text(
              'Summary',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: Spaces.defaultPd),
            const SummaryDetailsWidget(),
            const SizedBox(height: Spaces.defaultPd * 2),
            const ScheduledTasks()
          ],
        ),
      ),
    );
  }
}
