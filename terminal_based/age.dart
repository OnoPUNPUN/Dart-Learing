//Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.
import 'dart:io';

void main() {
  stdout.write("What's your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("What's your age: ");
  int? age = int.tryParse(stdin.readLineSync()!);

  print("You have ${(age! - 100).abs()} years left to be 100");
}
