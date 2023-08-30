import 'dart:math';

import 'package:flutter/material.dart';

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myScaffold,
    );
  }

  static Scaffold myScaffold = Scaffold(
    backgroundColor: Colors.blue,
    appBar: myAppBar,
    body: const BallPage(),
  );

  static AppBar myAppBar = AppBar(
    title: const Text('Ask Me Anything'),
    centerTitle: true,
    backgroundColor: Colors.blue[900],
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  static int number = 1;
  static String displayBall = 'images/ball$number.png';

  static void newBall() {
    //print('Old number is $number');
    number = Random().nextInt(5) + 1;
    // print('New number is $number');
    displayBall = 'images/ball$number.png';
    // print(displayBall);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  newBall();
                });
              },
              child: Image.asset(displayBall),
            ),
          )
        ],
      ),
    );
  }
}
