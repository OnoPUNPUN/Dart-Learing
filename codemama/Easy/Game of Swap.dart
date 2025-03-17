import 'dart:io';

void main() {
  List<int> inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int a = inputs[0];
  int b = inputs[1];

  print("Before swapping: num1 = $a, num2 = $b");

  int temp = a;
  a = b;
  b = temp;

  print("After swapping: num1 = $a, num2 = $b");
}
