import 'Expense.dart';

class ExpenseTracker {
  List<Expense> expenses = [];

  void addExpense(double amount, String category, String description) {
    expenses.add(
      Expense(amount: amount, category: category, description: description),
    );
    print("✅Expense added.");
  }

  void viewExpenses() {
    if (expenses.isEmpty) {
      print("No expenses to show.");
    } else {
      print("Expenses:");
      for (int i = 0; i < expenses.length; i++) {
        print(
          "${i + 1}. ${expenses[i].amount} - ${expenses[i].category} - ${expenses[i].description}",
        );
      }
    }
  }

  void filterExpenses(String category) {
    List<Expense> filteredExpenses =
        expenses.where((expense) => expense.category == category).toList();
    if (filteredExpenses.isEmpty) {
      print("No expenses found in the category '$category'.");
    } else {
      print("Filtered Expenses in '$category':");
      for (int i = 0; i < filteredExpenses.length; i++) {
        print(
          "${i + 1}. ${filteredExpenses[i].amount} - ${filteredExpenses[i].description}",
        );
      }
    }
  }

  void showSummary() {
    double totalExpenses = 0;
    for (var expense in expenses) {
      totalExpenses += expense.amount;
    }
    print("Total Expenses: $totalExpenses");
  }

  void setBudget(double budget) {
    if (budget < 0) {
      print("Budget cannot be negative.");
    } else {
      print("Budget set to: $budget");
    }
    double totalExpenses = 0;
    for (var expense in expenses) {
      totalExpenses += expense.amount;
    }
    if (totalExpenses > budget) {
      print("🚨 Alert: You have exceeded your budget of $budget!");
    } else {
      print("You are within your budget of $budget.");
    }
  }
}
