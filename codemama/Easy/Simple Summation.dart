import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(input[1] + input[0]);
}
