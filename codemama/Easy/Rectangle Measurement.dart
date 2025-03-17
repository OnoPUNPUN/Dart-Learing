import 'dart:io';

void main() {
  List<int> inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int a = inputs[0];
  int b = inputs[1];

  int area = a * b;

  print(area);
}
