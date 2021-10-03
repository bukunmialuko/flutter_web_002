import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_002/screeens/pages/cubit/pages_cubit.dart';

import '../../../constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PagesCubit(),
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Tokio"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                    // backgroundColor: Colors.white,
                    minimumSize: Size(50, 30),
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    alignment: Alignment.center),
                label: Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  context.read<PagesCubit>().selectPage(0);
                },
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                    // backgroundColor: Colors.white,
                    minimumSize: Size(50, 30),
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    alignment: Alignment.center),
                label: Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  context.read<PagesCubit>().selectPage(1);
                },
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                    // backgroundColor: Colors.white,
                    minimumSize: Size(50, 30),
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    alignment: Alignment.center),
                label: Text(
                  'Portfolio',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  context.read<PagesCubit>().selectPage(2);
                },
              ),
              TextButton.icon(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                style: TextButton.styleFrom(
                    // backgroundColor: Colors.white,
                    minimumSize: Size(50, 30),
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    alignment: Alignment.center),
                label: Text(
                  'Contact',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  context.read<PagesCubit>().selectPage(3);
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              Text("© 2021 Tokyo"),
              Text("Created byIb-Themes")
            ],
          ),
        ),
      ),
    );
  }
}
