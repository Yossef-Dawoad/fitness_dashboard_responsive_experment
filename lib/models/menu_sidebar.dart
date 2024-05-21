import 'package:flutter/material.dart';

class MenuSidebarModel {
  final String name;
  final IconData icon;
  final IconData selectedIcon;
  final String route;

  MenuSidebarModel({
    required this.name,
    required this.icon,
    required this.selectedIcon,
    required this.route,
  });
}
