void main() {
  // Type casting is used to change the type of the data type

  String a = "31";
  int b = 2;

  int c = int.parse(a); // this will change the String a to int

  print(b + c);

  // Change int to string

  String name = "Tonmoy";
  int age = 23;
  String Strage =
      age.toString(); // toString method will change anything to String

  print("I'm $name. I'm $Strage years old");

  /* Same Way we Can change all other Data types*/
}
