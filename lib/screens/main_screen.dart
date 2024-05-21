import 'package:fitness_dashboard_responsive/screens/responsive_screens/mobile_screen.dart';
import 'package:flutter/material.dart';

import 'components/responsive_handeller.dart';
import 'responsive_screens/normal_desktop.dart';
import 'responsive_screens/wide_desktop_screen.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ResponsiveScreenHandeller(
          desktop: WideDesktopMainPage(),
          tablet: TabletMainPage(),
          mobile: MobileMainPage(),
        ),
      ),
    );
  }
}
