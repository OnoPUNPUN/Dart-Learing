import 'dart:io';

import 'Expense Tracker.dart';

void main() {
  var expenseTracker = ExpenseTracker();

  while (true) {
    print("\nExpense Tracker Menu:");
    print("1. Add Expense");
    print("2. View Expenses");
    print("3. Filter/Search Expenses");
    print("4. Show Summary");
    print("5. Set Budget & Alerts");
    print("6. Exit");
    stdout.write("Choose an option: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        var description = "No description";
        stdout.write("Enter amount: ");
        var amount = double.parse(stdin.readLineSync()!);
        stdout.write("Enter category: ");
        var category = stdin.readLineSync()!;
        stdout.write("Do you wnat to add description? (y/n): ");
        var addDescription = stdin.readLineSync()!;
        if (addDescription.toLowerCase() == 'y') {
          stdout.write("Enter description: ");
          description = stdin.readLineSync()!;
        }
        if (amount > 0 && category.isNotEmpty) {
          expenseTracker.addExpense(amount, category, description);
        } else {
          print("Invalid input. Please try again.");
        }
        break;
      case '2':
        expenseTracker.viewExpenses();
        break;
      case '3':
        stdout.write("Enter category to filter: ");
        var filterCategory = stdin.readLineSync()!;
        expenseTracker.filterExpenses(filterCategory);
        break;
      case '4':
        expenseTracker.showSummary();
        break;
      case '5':
        stdout.write("Enter budget: ");
        var budget = double.parse(stdin.readLineSync()!);
        expenseTracker.setBudget(budget);
        break;
      case '6':
        print("Exiting the program.");
        exit(0);
    }
  }
}
