// write a program that prints out all the elements of the list that are less than 5.

import 'dart:io';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  for (int number in numbers) {
    if (number < 5) {
      print(number);
    }
  }
}
