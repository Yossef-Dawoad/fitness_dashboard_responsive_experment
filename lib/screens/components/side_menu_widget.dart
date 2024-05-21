import 'package:fitness_dashboard_responsive/constants/colors/colors.dart';
import 'package:fitness_dashboard_responsive/constants/spaces/spaces.dart';
import 'package:fitness_dashboard_responsive/data/side_menu_data.dart';
import 'package:fitness_dashboard_responsive/models/menu_sidebar.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabsData = SideMenuData();
    return Container(
      padding: const EdgeInsets.only(top: Spaces.xxs),
      child: ListView.builder(
        itemCount: tabsData.menuTabs.length,
        itemBuilder: (context, i) => _buildMenuEntry(tabsData.menuTabs[i], i),
      ),
    );
  }

  Widget _buildMenuEntry(MenuSidebarModel tab, int index) {
    final isTabSelected = selectedTabIndex == index;
    return Container(
      margin: const EdgeInsets.all(Spaces.xs),
      decoration: BoxDecoration(
        color: isTabSelected ? Pallete.tertiary : Colors.transparent,
        borderRadius: BorderRadius.circular(Spaces.xs),
      ),
      child: InkWell(
        onTap: () => setState(() => selectedTabIndex = index),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spaces.m,
                vertical: Spaces.s,
              ),
              child: Icon(tab.icon, color: isTabSelected ? Colors.white : Colors.grey),
            ),
            Text(
              tab.name,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: isTabSelected ? FontWeight.w900 : FontWeight.w500,
                    color: isTabSelected ? Colors.white : Colors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
