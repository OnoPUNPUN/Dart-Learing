import 'dart:io';

import 'Question.dart';

class Quiz {
  List<Question> questions = [];
  int score = 0;

  Quiz(this.questions);

  void startQuiz() {
    for (var i = 0; i < questions.length; i++) {
      print("Question ${i + 1}: ${questions[i].questionText}");
      for (var j = 0; j < questions[i].options.length; j++) {
        print("${j + 1}. ${questions[i].options[j]}");
      }
      stdout.write("Enter your answers: ");
      int? userChoice = int.tryParse(stdin.readLineSync() ?? "");

      if (userChoice != null && userChoice - 1 == questions[0].correctAnswer) {
        print("🎉 Correct Answer");
        score++;
      } else {
        print(
          "❌ Wrong Answer. Correct Answer: ${questions[0].options[questions[0].correctAnswer]}",
        );
      }
    }

    print("Quiz Over! Your Score is: $score");
  }
}
