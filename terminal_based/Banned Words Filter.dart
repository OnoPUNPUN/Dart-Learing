import 'dart:io';

void main() {
  Set<String> bannedWord = {
    "MF",
    "Nigga",
    "Bitch",
    "Faggot",
  };

  stdout.write("Enter your message: ");
  String? message = stdin.readLineSync();

  for (String word in bannedWord) {
    if (message!.contains(word)) {
      message = message.replaceAll(word, "****");
    }
  }

  print(message);
}
