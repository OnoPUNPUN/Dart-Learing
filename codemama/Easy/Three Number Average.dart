import 'dart:io';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int a = numbers[0];
  int b = numbers[1];
  int c = numbers[2];

  double average = ((a + b + c) / 3);

  print("Average: ${average.toStringAsFixed(2)}");
}
