import 'dart:io';

void main() {
  int y = int.parse(stdin.readLineSync()!);

  if (y % 4 == 0 && y % 100 != 0 || y % 400 == 0) {
    print("$y is a leap year.");
  } else {
    print("$y is not a leap year.");
  }
}
