import 'dart:io';

void main() {
  double totalCredits = 0.0;
  double totalMarks = 0.0;
  print("How many subjects do you have: ");
  int? subNum = int.tryParse(stdin.readLineSync()!);

  for (int i = 0; i < subNum!; i++) {
    print("Enter marks of subject ${i + 1}: ");
    double? marksPerSubject = double.tryParse(stdin.readLineSync()!);
    print("Enter credits of subject ${i + 1}: ");
    double? creditsPerSubject = double.tryParse(stdin.readLineSync()!);

    totalMarks += GPA(marksPerSubject!) * creditsPerSubject!;
    totalCredits += creditsPerSubject;
  }
  double CGPA = totalMarks / totalCredits;
  print("Your CGPA is: $CGPA");
  print("Your Grade is: ");
  displayGrade(CGPA);
}

double GPA(double marks) {
  if (marks >= 90 && marks <= 100) {
    return 4.0;
  } else if (marks >= 85 && marks < 90) {
    return 3.75;
  } else if (marks >= 80 && marks < 85) {
    return 3.50;
  } else if (marks >= 75 && marks < 80) {
    return 3.25;
  } else if (marks >= 70 && marks < 75) {
    return 3.00;
  } else {
    return 0.0;
  }
}

void displayGrade(double cg) {
  if (cg == 4.00) {
    print("A+");
  } else if (cg == 3.75) {
    print("A");
  } else if (cg == 3.50) {
    print("B+");
  } else if (cg == 3.25) {
    print("B");
  } else if (cg == 3.00) {
    print("C+");
  }
}
