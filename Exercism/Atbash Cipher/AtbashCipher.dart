class AtbashCipher {
  String encode(String str) {
    Map<String, String> alphabet = {
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
    str =
        str
            .replaceAll(RegExp(r'[.,;?!@#%^&*()_+={}|\[\]\-\\\/<>?"~`]'), "")
            .toLowerCase();

    for (int i = 0; i < str.length; i++) {
      if (alphabet.containsKey(str[i])) {
        result += alphabet[str[i]]!;
      } else if (str[i] != " ") {
        result += str[i];
      }
    }

    String finalResult = "";
    for (int i = 0; i < result.length; i++) {
      if (i > 0 && i % 5 == 0) {
        finalResult += " ";
      }
      finalResult += result[i];
    }

    return finalResult;
  }

  String decode(String str) {
    Map<String, String> alphabet = {
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
    String cleanedStr = str.replaceAll(
      RegExp(r'[.,;?!@#%^&*()_+={}|\[\]\-\\\/<>?"~`]'),
      "",
    );
    cleanedStr = cleanedStr.replaceAll(" ", "").toLowerCase();
    Map<String, String> rev = {};

    alphabet.forEach((revKey, revValue) {
      rev[revValue] = revKey;
    });

    for (int i = 0; i < cleanedStr.length; i++) {
      if (rev.containsKey(cleanedStr[i])) {
        result += rev[cleanedStr[i]]!;
      } else {
        result += cleanedStr[i];
      }
    }

    return result.trim();
  }
}

void main() {
  AtbashCipher cipher = AtbashCipher();
  String str = "O M G";
  String str1 = "vcvix rhn";
  print(cipher.encode(str));
  print(cipher.decode(str1));
}
