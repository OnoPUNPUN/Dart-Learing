void main() {
  print(divisors(12));
}

Object divisors(int number) {
  List<int> result = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      result.add(i);
    } else if (number % i != 0) {
      return "number is a prime number";
    }
  }
  return result;
}
