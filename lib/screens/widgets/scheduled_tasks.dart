import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/data/scheduled_task_data.dart';
import 'package:fitness_dashboard_responsive/screens/widgets/scheduled_details_row.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduledTasks extends StatelessWidget {
  const ScheduledTasks({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduledTasksService = ScheduledTaskDataService();
    final formattedDateTime = DateFormat('EEEE, MMM d, h a');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Scheduled Tasks',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: Spaces.defaultPd),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, i) {
            final task = scheduledTasksService.scheduledTasks[i];
            return ScheduledDetailsRow(
              name: task.name,
              dateTime: formattedDateTime.format(task.dateTime),
            );
          },
          separatorBuilder: (_, i) => const SizedBox(height: Spaces.btwItems),
          itemCount: scheduledTasksService.scheduledTasks.length,
        ),
      ],
    );
  }
}
