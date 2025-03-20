import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int rev = 0;

  while (num < 0) {
    int lastNum = num % 10;
    rev = rev * 10 + lastNum;
    num = num ~/ 10;
  }
}
