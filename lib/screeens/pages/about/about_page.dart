import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(38, 38, 38, 8),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/about_guy.jpeg'),
                  fit: BoxFit.fitWidth,
                ),
                // image: DecorationImage(
                //   image: NetworkImage("http://tokyo.ibthemespro.com/assets/img/slider/1.jpg"),
                //   fit: BoxFit.fill,
                // ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            "Oluwabukunmi Aluko",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Text(
                          'Hello, I am a creative photographer based in Lagos, \nand happy to travel all over Europe to capture your big day in candid and authentic photos. I will create a lasting memory of the people.',
                          maxLines: 10,
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontStyle: FontStyle.italic, wordSpacing: 2, height: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 0, 36),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: EdgeInsets.all(defaultPadding),
                                minimumSize: Size(50, 30),
                                alignment: Alignment.center),
                            child: Text(
                              'Read More',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Birthday:   ',
                                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
                              ),
                              TextSpan(
                                text: '01.07.1990',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Location:   ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'Lagos Nigeria.',
                                style: TextStyle(wordSpacing: 2, letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Email:   ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'mail@gmail.com',
                                style: TextStyle(wordSpacing: 2, letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Phone:   ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '+77 022 177 05 05',
                                style: TextStyle(wordSpacing: 2, letterSpacing: 1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
