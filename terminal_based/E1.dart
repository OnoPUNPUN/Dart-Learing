// Exercise:
// Develop a program to calculate the shipping cost based on the destination zone and the weight of the package (you will be provided)
// Calculate the shipping cost according to these conditions:
// If the destination zone is 'XYZ', the shipping cost is $5 per kilogram.
// If the destination zone is 'ABC', the shipping cost is $7 per kilogram.
// If the destination zone is 'PQR', the shipping cost is $10 per kilogram.
// If the destination zone is not 'XYZ', 'ABC', or 'PQR', display an error message.

import 'dart:io';

void main() {
  Map<String, double> shippingRate = {
    'XYZ': 5.0,
    'ABC': 7.0,
    'PQR': 10.00,
  };

  stdout.write("Enter the destination: ");
  String? zone = stdin.readLineSync()?.toUpperCase().trim();

  stdout.write("Enter the weight of the package: ");
  double? weight = double.tryParse(stdin.readLineSync()!);

  if (weight == null || weight < 0) {
    print("Enter a positive number");
    return;
  }

  if (shippingRate.containsKey(zone)) {
    double shippingCost = shippingRate[zone]! * weight;
    print("Shipping Cost: \$${shippingCost.toStringAsFixed(2)}");
  } else {
    print("Invalid destination zone.");
  }
}
