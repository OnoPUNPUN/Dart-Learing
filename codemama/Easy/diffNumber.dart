// import 'dart:io';

// void main() {
//   int? num1 = int.tryParse(stdin.readLineSync() ?? '');
//   int? num2 = int.tryParse(stdin.readLineSync() ?? '');
//   int? num3 = int.tryParse(stdin.readLineSync() ?? '');

//   print((num1! < num2! && num1 < num3!) ? num1 : (num2 < num3! ? num2 : num3));
// }
import 'dart:io';
import 'dart:math';

void main() {
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int minimum = min(numbers[0], min(numbers[1], numbers[2]));

  print(minimum);
}
