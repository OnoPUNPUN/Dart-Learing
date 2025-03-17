import 'dart:io';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int a = numbers[0];
  int b = numbers[1];

  int area = ((a * b) / 2).toInt();

  print(area);
}
