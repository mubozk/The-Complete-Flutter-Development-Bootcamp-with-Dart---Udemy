// class Question {
//   String questionText;
//   bool questionAnswer;
//   Question(String questionText, bool questionAnswer) {
//     this.questionText = questionText;
//     this.questionAnswer = questionAnswer;
//   }
// }

class Question {
  String questionText;
  bool questionAnswer;
  Question({required this.questionText, required this.questionAnswer});
  factory Question.second(int a) {
    return Question(questionText: ' ', questionAnswer: false);
  }
}

// class DestinationModel {
//   DestinationModel({
//     required this.title,
//   });
//   String title;
// }