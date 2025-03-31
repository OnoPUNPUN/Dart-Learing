import 'dart:ffi';

void main() {
  String test = "yes";
  print(encode(test));
}

String encode(String text) {
  Map<String, String> letter = {
    "a": "z",
    "b": "y",
    "c": "x",
    "d": "w",
    "e": "v",
    "f": "u",
    "g": "t",
    "h": "s",
    "i": "r",
    "j": "q",
    "k": "p",
    "l": "o",
    "m": "n",
    "n": "m",
    "o": "l",
    "p": "k",
    "q": "j",
    "r": "i",
    "s": "h",
    "t": "g",
    "u": "f",
    "v": "e",
    "w": "d",
    "x": "c",
    "y": "b",
    "z": "a",
  };

  String result = "";

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase();

    if (letter.containsKey(char)) {
      result += letter[char]!;
    } else {
      result += char;
    }
  }
  return result;
}
