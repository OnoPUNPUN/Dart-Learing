
class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    BigInt sum = BigInt.zero;
    BigInt temp = BigInt.parse(number);
    int digits = number.length;
    BigInt originalNumber = temp;

    while (temp > BigInt.zero) {
      BigInt lastDigit = temp % BigInt.from(10);
      sum += lastDigit.pow(digits);
      temp = temp ~/ BigInt.from(10);
    }

    return sum == originalNumber;
  }
}

void main() {
  ArmstrongNumbers armstrongNumbers = ArmstrongNumbers();
  print(armstrongNumbers.isArmstrongNumber("153"));
  String n = "153";
  int test = int.parse(n);
  print(test);
}
