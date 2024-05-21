import 'package:fitness_dashboard_responsive/models/schedule_task.dart';

class ScheduledTaskDataService {
  final scheduledTasks = [
    ScheduleTaskModel(
      name: 'Study',
      dateTime: DateTime.now()..add(const Duration(hours: 1)),
    ),
    ScheduleTaskModel(
      name: 'Watch Live Flutter Session',
      dateTime: DateTime.now()..add(const Duration(hours: 4)),
    ),
    ScheduleTaskModel(
      name: 'Yoga Lessons',
      dateTime: DateTime.now()..add(const Duration(days: 1, hours: 6)),
    ),
  ];
}
