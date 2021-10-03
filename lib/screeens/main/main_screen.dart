import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_002/screeens/pages/about/about_page.dart';
import 'package:flutter_web_002/screeens/pages/cubit/pages_cubit.dart';
import 'package:flutter_web_002/screeens/pages/home/home_page.dart';
import 'package:flutter_web_002/screeens/pages/portfolio/portfolio_page.dart';

import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PagesCubit(),
      child: BlocBuilder<PagesCubit, int>(
        builder: (context, screenIndex) {
          return Scaffold(
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: SideMenu()),
                  Expanded(
                    flex: 6,
                    child: IndexedStack(
                      index: screenIndex,
                      children: [
                        HomePage(),
                        AboutPage(),
                        PortfolioPage(),
                        Icon(Icons.directions_transit),
                        Icon(Icons.directions_bike),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
