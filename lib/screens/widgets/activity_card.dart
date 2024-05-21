import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/models/activity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.activity});
  final ActivityModel activity;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(Spaces.xxl),
        ),
        color: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      ),
      padding: const EdgeInsets.all(Spaces.btwItems),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(activity.iconUri, width: 35, height: 35),
          const SizedBox(height: Spaces.btwSections),
          Text(
            activity.value.toString(),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            activity.name,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
