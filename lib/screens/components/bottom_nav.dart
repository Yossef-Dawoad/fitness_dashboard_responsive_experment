import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabsData = SideMenuData();
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => setState(() => _selectedIndex = index),
      backgroundColor: isDarkTheme ? Pallete.darkGrey : Pallete.brightGrey,
      indicatorColor: Pallete.primary.withOpacity(0.4),
      destinations: tabsData.menuTabs
          .take(tabsData.menuTabs.length - 1)
          .map((tab) => NavigationDestination(
              icon: Icon(tab.icon), label: tab.name, selectedIcon: Icon(tab.selectedIcon)))
          .toList(),
    );
  }
}
