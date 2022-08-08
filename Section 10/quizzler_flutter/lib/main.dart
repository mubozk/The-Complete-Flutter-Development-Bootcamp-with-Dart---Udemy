import 'package:flutter/material.dart';
import 'package:quizzler_flutter/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

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
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool currentAnswer) {
    setState(() {
      if (quizBrain.isFinished()) {
        Alert(
          context: context,
          type: AlertType.error,
          title: "QUESTIONS ARE DONE",
          desc:
              "There are no more questions ahead you can go back to the beggining as your one and only option",
          buttons: [
            DialogButton(
              child: Text(
                "Yes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            ),
            DialogButton(
              child: Text(
                "Yes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();

        quizBrain.reset();
        scoreKeeper = [];
      }
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If true, execute Part A, B, C, D.
      //TODO: Step 4 Part A - show an alert using rFlutter_alert (remember to read the docs for the package!)
      //HINT! Step 4 Part B is in the quiz_brain.dart
      //TODO: Step 4 Part C - reset the questionNumber,
      //TODO: Step 4 Part D - empty out the scoreKeeper.

      //TODO: Step 5 - If we've not reached the end, ELSE do the answer checking steps below 👇
      bool correctAnswer = quizBrain.getQuestionAnswer();
      if (currentAnswer == correctAnswer) {
        print('user got it right');
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
        print('user got it wrong');
      }

      quizBrain.nextQuestion();
    });
  }

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
                quizBrain.getQuestionText(),
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
                  checkAnswer(true);
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
                  checkAnswer(false);
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        )
        //TODO: add row for score keeper
      ],
    );
  }
}
