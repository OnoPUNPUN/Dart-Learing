import 'dart:io';

void main() {
  double s = double.parse(stdin.readLineSync()!);

  int b = ((s * 10) / 100).toInt();

  print(b);
}
