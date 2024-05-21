import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/screens/widgets/details_summary_row.dart';
import 'package:flutter/material.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(Spaces.btwItems),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(Spaces.xxl)),
        color: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetailsRow(title: 'Cal', value: '335'),
          DetailsRow(title: 'Steps', value: '10983'),
          DetailsRow(title: 'Distance', value: '10km'),
          DetailsRow(title: 'Sleep', value: '8hr'),
        ],
      ),
    );
  }
}
