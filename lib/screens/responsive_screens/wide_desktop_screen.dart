import 'package:flutter/material.dart';
import '../components/dash_board_widget.dart';
import '../components/side_menu_widget.dart';
import '../components/summary_widget.dart';

class WideDesktopMainPage extends StatelessWidget {
  const WideDesktopMainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: SideMenuWidget()),
        Expanded(flex: 7, child: SingleChildScrollView(child: DashBoardWidget())),
        Expanded(flex: 3, child: SummaryWidget()),
      ],
    );
  }
}
