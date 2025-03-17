import 'dart:io';

void main() {
  double? celsius = double.tryParse(stdin.readLineSync()!);

  double fahrenheit = (celsius! * 1.8) + 32;

  print("The temperature in Fahrenheit is: ${fahrenheit.toStringAsFixed(2)}");
}
