import 'dart:io';

void main() {
  int r = int.parse(stdin.readLineSync()!);
  double area = 3.14 * r * r;
  print("The area of the circle is ${area.toStringAsFixed(2)} square units.");
}
