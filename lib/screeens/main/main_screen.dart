import 'package:flutter/material.dart';
import 'package:flutter_web_002/screeens/dashboard/dashboard.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: SideMenu()),
            Expanded(flex: 6, child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}
