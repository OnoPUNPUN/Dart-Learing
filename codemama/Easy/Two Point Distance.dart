import 'dart:io';
import 'dart:math';

void main() {
  List<double> inputs1 =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  double x1 = inputs1[0];
  double y1 = inputs1[1];

  List<double> inputs2 =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  double x2 = inputs2[0];
  double y2 = inputs2[1];

  double distance = sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2));

  print("Distance: ${distance.toStringAsFixed(2)}");
}
