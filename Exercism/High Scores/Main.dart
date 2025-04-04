// https://exercism.org/tracks/dart/exercises/high-scores
class HighScores {
  List<int> scores;

  HighScores(this.scores);

  // List<int> latest() {
  //   if (scores == null || scores.isEmpty) {
  //     return [];
  //   }
  //   return [scores.last];
  // }

  int latest() {
    if (scores.isEmpty) {
      return 0;
    }
    return scores.last;
  }

  // List<int> personalBest() {
  //   int maxScore = scores[0];

  //   for (int i = 1; i < scores.length; i++) {
  //     if (scores[i] > maxScore) {
  //       maxScore = scores[i];
  //     }
  //   }
  //   return [maxScore];
  // }
  int personalBest() {
    if (scores.isEmpty) {
      return 0;
    }

    int maxScore = scores[0];

    for (int i = 1; i < scores.length; i++) {
      if (scores[i] > maxScore) {
        maxScore = scores[i];
      }
    }

    return maxScore;
  }

  List<int> personalTopThree() {
    if (scores.isEmpty) {
      return [];
    }

    List<int> sortedScores = List.from(scores);

    sortedScores.sort((a, b) => b.compareTo(a));

    return sortedScores.sublist(
      0,
      sortedScores.length < 3 ? sortedScores.length : 3,
    );
  }
}

void main() {
  HighScores high = HighScores([
    10,
    30,
    90,
    30,
    100,
    20,
    10,
    0,
    30,
    40,
    40,
    70,
    70,
  ]);
  List<int> test = [1, 3, 2, 6];
  test.sort();
  print(test.reversed.toList());
  print(high.personalTopThree());
}
