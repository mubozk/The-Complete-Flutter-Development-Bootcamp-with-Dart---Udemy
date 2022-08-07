import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

////////////////////////////////////////////////////////

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('ASK ME ANYTHING'),
        titleTextStyle: TextStyle(color: Colors.red.shade900),
      ),
      body: Ball(),
    );
  }
}

////////////////////////////////////////////////////////

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var wizardsAnswer = 1;

  void randomize() {
    setState(() {
      wizardsAnswer = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Expanded(
          child: GestureDetector(
            onTap: () {
              randomize();
            },
            child: Image.asset('images/ball$wizardsAnswer.png'),
          ),
        ),
      ),
    );
  }
}
