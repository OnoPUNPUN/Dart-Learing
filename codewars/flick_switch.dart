//https://www.codewars.com/kata/64fbfe2618692c2018ebbddb/train/dart
List<bool> flickSwitch(List<String> lst) {
  List<bool> res = [];
  bool isFlicked = false;

  for (int i = 0; i < lst.length; i++) {
    if (lst[i] == 'flick') {
      isFlicked = !isFlicked;
      res.add(!isFlicked);
    } else {
      res.add(!isFlicked);
    }
  }
  return res;
}

void main() {
  print(flickSwitch(['codewars', 'flick', 'code', 'wars']));
}
