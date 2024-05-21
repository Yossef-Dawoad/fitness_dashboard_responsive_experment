import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideNavRail extends StatefulWidget {
  const SideNavRail({super.key});

  @override
  State<SideNavRail> createState() => _SideNavRailState();
}

class _SideNavRailState extends State<SideNavRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final tabsData = SideMenuData();
    return NavigationRail(
      backgroundColor: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      indicatorColor: Pallete.primary.withOpacity(0.4),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() => _selectedIndex = index);
      },
      destinations: tabsData.menuTabs
          .map(
            (tab) => NavigationRailDestination(
                icon: Icon(tab.icon), selectedIcon: Icon(tab.selectedIcon), label: Text(tab.name)),
          )
          .toList(),
    );
  }
}
