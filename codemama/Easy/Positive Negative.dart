import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);

  if (a > 0) {
    print("$a is a positive number.");
  } else if (a < 0) {
    print("$a is a negative number.");
  } else {
    print("The number is zero.");
  }
}
