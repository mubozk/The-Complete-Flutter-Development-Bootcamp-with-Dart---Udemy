import 'package:flutter/material.dart';
import 'package:quizzler_flutte/question.dart';

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
  List<String> questionsOnGo = [
    'You can lead a cow down stairs but not up stairs',
    'Approximately one quarter of human bones are in the feet',
    'A slug\'s blood is green',
  ];
  List<bool> answers = [false, true, true];
  List<Icon> scoreKeeper = [];

  int questionNumber = 0;

  Question q2 = Question.second(3);

  // Question q1 = (q =  'You can lead a cow down stairs but not up stairs', a = false);

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
                  bool correctAnswer = answers[questionNumber];
                  if (correctAnswer == true) {
                    print('user got it right');
                  } else {
                    print('user got it wrong');
                  }

                  setState(() {
                    questionNumber++;
                  });
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
                  bool correctAnswer = answers[questionNumber];
                  if (correctAnswer == false) {
                    print('user got it right');
                  } else {
                    print('user got it wrong');
                  }

                  setState(() {
                    questionNumber++;
                  });
                },
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            )
          ],
        )
        //TODO: add row for score keeper
      ],
    );
  }
}
