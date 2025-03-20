// Functions are block of COde

void main() {
  String para = "FUNCTIONS with Parameters";
  printName(); // this is how we call a function
  String fen = getName(); // this is how we call a function with data types
  print(fen);

  printName2(para);
  printName3("Tonmoy");
  printName4(
      age: 22,
      name: "Crack",
      address: "Dhaka"); // we Can add data where we want
}

void printName() {
  print("Tonmoy");
}

// Function with Data types
String getName() {
  // Fuction with Data types Must need a return. We can Use any data types we need
  return "Functions with Data Types";
}

// Fuction with Parameters
void printName2(String name) {
  // Function with parameters need to use parameters inside the function
  print(name);
}

// Function with Optional Parameters
void printName3(String name, [String? address]) {
  // Optional Parameters need to use [] and we don't have to add value
  print("Name: $name, Address: $address");
}

// Function with Named Parameters. if we use Named Parameters we need to use named parameters inside the function and we don't need to add value on a same line
void printName4({required String name, String? address, required int age}) {
  // required means we need to add value on a same line
  print("Name: $name, Address: $address, Age: $age");
}
