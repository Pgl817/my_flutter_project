import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
          ),
          body: const Ball(),
        ),
      )
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  static int ballNumber=0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(10.0),
        child: TextButton(
            onPressed: (){
    setState(() {
    ballNumber=Random().nextInt(5)+1;
    });
    print('Button is pressed and it is Number $ballNumber');
    },
    child: Image.asset('images/ball$ballNumber.png'),
    ),
    ),
    );
  }
}
