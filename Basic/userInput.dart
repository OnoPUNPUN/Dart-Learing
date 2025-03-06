import 'dart:io';

void main() {
  // In terminal if we want to take Input from the user

  print("Enter your name: ");
  String? name = stdin
      .readLineSync(); // We use ? in order to protect our program from crashing on null value
  // .readLineSync() will take String type value from user

  print("What's your age: ");
  int? age = int.tryParse(
      stdin.readLineSync()!); // this will take int type value from users

  print("Enter your CGPA: ");
  double? cg = double.tryParse(stdin.readLineSync()!);

  print("You are: $name. Your Age is: $age. Your CG is: $cg.");
}
