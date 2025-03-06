void main() {
  // Integer Type Data Types. Real Numbers
  int a = 1;
  int b = 2;

  print("Integer: $a $b");

  // Double or Float type. Fraction numbers
  double c = 2.41;
  print("Fraction: $c");

  // Boolean Data Types. True or False
  bool isMiberGay = true;
  print("YEs it's $isMiberGay");

  // String Data types. Anything is written in double quat is String
  String name = "Mike Hunt";

  // Date Time Types. This data types will show the runtime date and time
  DateTime today = DateTime.now();
  print("It's: $today");

  // Var and Dynamic. Special type Data types which doesn't need any data Type.
  // If One data types has given to var We Can't change it anymore but in dynamic
  // we Can change the Data Types later
  var x = "Tonmoy";

  // x = 31; I've already put String data on x because of var i can't change it to int anymore

  dynamic z = "Tonmoy";

  z = 31; // by using dynamic I can change the data type any time i want. like z was on String but now It's int.
}
