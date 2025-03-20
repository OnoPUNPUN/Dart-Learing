import 'dart:io';

void main() {
  int x = 121;

  String s = x.toString();

  String rev = s.split('').reversed.join('');

  if (s == rev) {
    print("true");
  } else {
    print("false");
  }
}
