import 'Human.dart';

void main() {
  // We use class in order to Make our code more readable and maintainable
  // Object is an entity. Like Human or Car
  // Class is a blueprint of an object

  // Student without class
  String studentName = 'Rahim';
  String studentClass = 'class-10';
  String studentAddress = 'Dhaka';

  String studentName2 = 'Rahim';
  String studentClass2 = 'class-10';
  String studentAddress2 = 'Dhaka';

  String studentName3 = 'Rahim';
  String studentClass3 = 'class-10';
  String studentAddress3 = 'Dhaka';

  // We Have to use multiple lines to make our code more readable and maintainable

  // student with class
  Student student1 = Student();
  student1.studentName = 'Rahim';
  student1.studentClass = 'class 10';
  student1.studentAddress = 'Dhaka';

  // Printing Data from class
  print(student1.studentName);
  print(student1.studentAddress);
  print(student1.studentClass);

  // Calling class from other files
  Human robiul = new Human();
  robiul.name = "Robiul Islam"; // This is how we add data in class
  print(robiul.name); // This is how we print data from class
  robiul.sleep(); // this is how we call function from class
  Human.className; // Static Variable
}

// class
class Student {
  String? studentName;
  String? studentClass;
  String? studentAddress;
}
