import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.toLowerCase();
  bool isVowel = false;

  for (String char in input.split('')) {
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      isVowel = true;
      break;
    }
  }

  if (isVowel) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
