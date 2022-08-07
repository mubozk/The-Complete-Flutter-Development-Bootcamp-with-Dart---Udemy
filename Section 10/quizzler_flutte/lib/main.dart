import 'package:flutter/material.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: QuizzPage(),
      ),
    ));
  }
}

class QuizzPage extends StatefulWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'This is the way',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          flex: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  color: Colors.green,
                  child: GestureDetector(
                    child: Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onTap: () {
                      //The user picked true.
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  color: Colors.red,
                  child: GestureDetector(
                    child: Text(
                      'False',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onTap: () {
                      //The user picked true.
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
