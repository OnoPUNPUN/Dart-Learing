import 'Question.dart';
import 'Quiz.dart';

void main() {
  List<Question> questions = [
    Question("Biggest country in the world?", ["Russia", "USA", "China"], 0),
    Question("Biggest animal in the world?", ["Elephant", "Tiger", "Lion"], 2),
    Question("Biggest planet in the solar system?", [
      "Mars",
      "Jupiter",
      "Saturn",
    ], 1),
  ];

  Quiz quiz = Quiz(questions);
  quiz.startQuiz();
}
