void main() {
  /*There are four types of Operators in Dart: 
          1. Assignment Operators
          2. Logical Operators
          3. Relational Operators
          4. Unary Operators*/

  // Assignment Operators Use to assign the values
  var a = 2.00; // Here '=' Used to assign the value on a

  a += 1; // a = a + 1
  a -= 1; // a = a - 1
  a *= 2; // a = a * 2
  a /= 2; // a = a / 2

  // There are three types of Logical Operators &&, ||, !
  int n = 20;
  int m = 12;

  print((n > 7) && (m <= 12)); // IN AND all Condition Should be true

  print((n > 7) || (m <= 10)); // IN OR only one Condition should be true

  print(n != 20); // NOT operator will check is it true or false

  // Relational Operators >, <, ==

  int x = 5;
  int y = 11;

  print(x > y);

  print("Prefix:"); //will increase from the 1st print.
  var num = 10;
  print(++num);
  print(++num);
  print(++num);
  print(" ");
  print("Postfix:"); //will increase from the 2nd print.
  var num2 = 10;
  print(num2++);
  print(num2++);
  print(num2++);
}
