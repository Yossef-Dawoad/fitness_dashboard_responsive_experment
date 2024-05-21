import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey)),
        const SizedBox(height: Spaces.xxs),
        Text(value, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}
