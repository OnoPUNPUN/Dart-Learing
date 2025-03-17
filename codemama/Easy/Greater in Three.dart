import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int a = numbers[0];
  int b = numbers[1];
  int c = numbers[2];

  int g = max(a, max(b, c));

  print(g);
}
