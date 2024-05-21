import 'package:fitness_dashboard_responsive/constants/routes/routes.dart';
import 'package:fitness_dashboard_responsive/models/menu_sidebar.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menuTabs = [
    MenuSidebarModel(
      name: 'Dashboard',
      icon: Icons.home,
      selectedIcon: Icons.home_outlined,
      route: Routes.home,
    ),
    MenuSidebarModel(
      name: 'Profile',
      icon: Icons.person,
      selectedIcon: Icons.person_2_outlined,
      route: Routes.profile,
    ),
    MenuSidebarModel(
      name: 'Exersice',
      icon: Icons.run_circle,
      selectedIcon: Icons.run_circle_outlined,
      route: Routes.exersice,
    ),
    MenuSidebarModel(
      name: 'Settings',
      icon: Icons.settings,
      selectedIcon: Icons.settings_outlined,
      route: Routes.settings,
    ),
    MenuSidebarModel(
      name: 'SignOut',
      icon: Icons.logout,
      selectedIcon: Icons.logout_outlined,
      route: Routes.logout,
    ),
  ];
}
