import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          filled: true,
          fillColor: Theme.of(context).brightness == Brightness.dark
              ? Pallete.darkGrey
              : Pallete.brightGrey,
          border: OutlineInputBorder(
            // borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Spaces.s),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Pallete.tertiary, width: 2),
            borderRadius: BorderRadius.circular(Spaces.l),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: Spaces.xxs),
          prefixIcon: const Icon(Icons.search, color: Pallete.secondary)),
    );
  }
}
