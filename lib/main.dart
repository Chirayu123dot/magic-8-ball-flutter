import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent.shade200,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: () {
              changeBallImage();
            },
          ),
        ),
      ),
    );
  }

  /// The function randomly changes the ball image
  void changeBallImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
