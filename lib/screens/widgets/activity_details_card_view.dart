import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/data/activity_data.dart';
import 'package:flutter/material.dart';

import 'activity_card.dart';

class ActivityDetailsCardsView extends StatelessWidget {
  const ActivityDetailsCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    final cardsData = ActivityData();
    final isMobile = MediaQuery.sizeOf(context).width < 920;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: Spaces.btwItems,
        mainAxisSpacing: Spaces.s,
      ),
      itemCount: cardsData.activityDetails.length,
      shrinkWrap: true,
      itemBuilder: (context, i) => ActivityCard(activity: cardsData.activityDetails[i]),
    );
  }
}
