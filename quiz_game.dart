import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  String correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

void main() {
  List<Question> quizQuestions = [
    Question(
      "What is the capital of France?",
      ["A. Paris", "B. Madrid", "C. Rome", "D. Berlin"],
      "A",
    ),
    Question(
      "Who wrote 'Hamlet'?",
      ["A. Charles Dickens", "B. William Shakespeare", "C. Mark Twain", "D. Leo Tolstoy"],
      "B",
    ),
    Question(
      "Which planet is known as the Red Planet?",
      ["A. Earth", "B. Mars", "C. Venus", "D. Jupiter"],
      "B",
    ),
    Question(
      "How many continents are there?",
      ["A. 5", "B. 6", "C. 7", "D. 8"],
      "C",
    ),
    Question(
      "What is the largest mammal?",
      ["A. Elephant", "B. Blue Whale", "C. Giraffe", "D. Great White Shark"],
      "B",
    ),
  ];

  int score = 0;

  print("Welcome to the Quiz Game!");
  print("Please type the letter corresponding to your answer.\n");

  for (var question in quizQuestions) {
    print(question.questionText);
    question.options.forEach(print);

    stdout.write("Your answer: ");
    String? answer = stdin.readLineSync()?.toUpperCase();

    if (answer == question.correctAnswer) {
      print("Correct!\n");
      score++;
    } else {
      print("Wrong! The correct answer was ${question.correctAnswer}.\n");
    }
  }

  print("Quiz Finished! Your score is $score out of ${quizQuestions.length}.");

  if (score == quizQuestions.length) {
    print("Excellent! You got a perfect score!");
  } else if (score > quizQuestions.length / 2) {
    print("Good job! You scored above average.");
  } else {
    print("Better luck next time!");
  }
}
