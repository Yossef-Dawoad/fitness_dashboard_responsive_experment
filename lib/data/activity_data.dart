import 'package:fitness_dashboard_responsive/gen/assets.gen.dart';
import 'package:fitness_dashboard_responsive/models/activity.dart';

class ActivityData {
  final activityDetails = [
    ActivityModel(
      name: 'Calories burned',
      iconUri: Assets.icons.pngs.burn.path,
      value: 100,
    ),
    ActivityModel(
      name: 'Steps',
      iconUri: Assets.icons.pngs.steps.path,
      value: 100,
    ),
    ActivityModel(
      name: 'Destance',
      iconUri: Assets.icons.pngs.distance.path,
      value: 100,
    ),
    ActivityModel(
      name: 'Sleep',
      iconUri: Assets.icons.pngs.sleep.path,
      value: (7 * 60 * 60) + 48 * 60,
    ),
  ];
}
