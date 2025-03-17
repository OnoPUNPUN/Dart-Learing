import 'dart:io';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int difference = numbers[0] - numbers[1];

  print(difference);
}
