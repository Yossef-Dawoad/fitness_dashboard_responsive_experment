import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:flutter/material.dart';

class ScheduledDetailsRow extends StatelessWidget {
  const ScheduledDetailsRow({
    super.key,
    required this.name,
    required this.dateTime,
  });
  final String name;
  final String dateTime;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(Spaces.btwItems),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(Spaces.xxl)),
        color: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.labelMedium),
              Text(
                dateTime,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
              ),
            ],
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
          )
        ],
      ),
    );
  }
}
