class AtbashCipher {
  final Map<String, String> letter = {
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

  String _transform(String text) {
    return text
        .split("")
        .map((char) {
          String lowerChar = char.toLowerCase();
          return letter.containsKey(lowerChar) ? letter[lowerChar]! : char;
        })
        .join("");
  }

  String encode(String text) => _transform(text);
  String decode(String text) => _transform(text);
}
