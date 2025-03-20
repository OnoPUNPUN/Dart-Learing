import 'dart:io';

void main() {
  List<int> nums = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int t = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == t) {
        print("$i $j");
      }
    }
  }
}
