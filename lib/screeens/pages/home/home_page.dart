import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_002/screeens/pages/cubit/pages_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PagesCubit(),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    minRadius: MediaQuery.of(context).size.width / 10,
                    backgroundImage: AssetImage('assets/images/about_guy.jpeg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bukunmi Aluko"),
                  Text(
                      "Creative Photographer based in New York and happy to travel all over Europe to capture photos."),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      GestureDetector(onTap: () {}, child: Icon(Icons.facebook)),
                      GestureDetector(onTap: () {}, child: Icon(Icons.mail)),
                      GestureDetector(onTap: () {}, child: Icon(Icons.face))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
