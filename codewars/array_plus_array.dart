//https://www.codewars.com/kata/5a2be17aee1aaefe2a000151/train/dart
int arrayPlusArray(List<int> arr1, List<int> arr2) {
  int s1 = 0;
  int s2 = 0;

  for (int i = 0; i < arr1.length; i++) {
    s1 += arr1[i];
  }

  for (int i = 0; i < arr2.length; i++) {
    s1 += arr2[i];
  }
  return s1 + s2;
}

void main() {
  print(arrayPlusArray([1, 2, 3], [4, 5, 6]));
}
