import 'dart:io';

void main() {
  // String name = "Tonmoy";
  // String pass = "1234";

  // print("Enter your name: ");
  // String? inputName = stdin.readLineSync();

  // print("Enter your password: ");
  // String? inputPass = stdin.readLineSync();

  // if (name == inputName && pass == inputPass) {
  //   print("Welcome $name");
  // } else if (name != inputName && pass == inputPass) {
  //   print("Wrong username \n Try again");
  // } else if (name == inputName && pass != inputPass) {
  //   print("Wrong password \n Try again");
  // } else {
  //   print("Wrong username or password");
  // }

  var money = 50;

  money >= 500
      ? print("I will buy a coffee")
      : money < 500 && money >= 100
          ? print("I will buy a tea")
          : money == 100
              ? print("I will buy a juice")
              : print("I will buy a water");
}
