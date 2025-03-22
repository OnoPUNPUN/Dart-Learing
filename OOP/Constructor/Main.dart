void main() {
  Cookie cookie1 = Cookie(
      "Round", 10.0); // We called the constructor and added the arguments
}

class Cookie {
  String shape;
  double size;

  Cookie(this.shape, this.size) {
    // This give us access to the class we are in
    print("Constructor has been called");
    baking();
  } // This is Constructor

  // Method in this class
  void baking() {
    print("Baking has Started");
  }

  bool isCooling() {
    return false;
  }
}
