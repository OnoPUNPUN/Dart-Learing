// WE CAN CREATE CLASS FROM OTHER FILES TOO
class Human {
  int legs = 2;
  int hands = 2;
  String? color;
  int eye = 2;
  String? name;
  // Static Can be accessed without creating an object
  static String className = 'Human class';

  // Methods
  void walk() {
    print("$name is walking");
  }

  void sleep() {
    print("$name is sleeping");
  }
}
