void main() {
  Cookie cookie1 = Cookie(
      size: 24.3,
      shape: "Round"); // we can add vlaue on parameters wheever we want

  print(cookie1.shape);
}

class Cookie {
  final String shape;
  final double size;

  // This is named constructor like named Function.
  Cookie({required this.shape, required this.size}) {
    baking(); // we used required keyword to avoid null value
  }

  void baking() {
    print("Your Cookis which is $shape and size $size is baking");
  }
}
