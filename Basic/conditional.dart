import 'dart:io';

void main() {
  // Conditional Statement is used to check the condition of something and do something if it is true or false

  // print("Are you a boy? (yes/no)");
  // String? userInput = stdin.readLineSync();

  // if (userInput == "yes") {
  //   print("You are a boy");
  // } else {
  //   print("You are a girl");
  // }

  // If you want to check more than one condition you can use else if

  int money = 1000;

  if (money >= 500) {
    print("I will buy a coffee");
  } else if (money < 500 && money >= 100) {
    print("I will buy a tea");
  } else {
    print("I will buy a juice");
  }

  // ternary
  int num = 10;

  String result = (num > 10)
      ? "Greater than 10"
      : (num == 10)
          ? "Equal to 10"
          : "Less than 10";

  print(result);
}
