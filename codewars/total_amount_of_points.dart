//https://www.codewars.com/kata/5bb904724c47249b10000131/train/dart
int points(List<String> games) {
  int out = 0;

  for (int i = 0; i < games.length; i++) {
    String game = games[i];
    int x = int.parse(game[0]);
    int y = int.parse(game[2]);
    if (x > y) {
      out += 3;
    } else if (x == y) {
      out += 1;
    } else {
      out += 0;
    }
  }
  return out;
}

void main() {
  print(
    points([
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
      '1:0',
    ]),
  );
}
