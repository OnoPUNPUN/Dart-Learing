import 'dart:io';

import 'TaskManager.dart';

void main() {
  var taskManager = Taskmanager();

  while (true) {
    print(
      "1. Add Task\n2. Show Task\n3. Complete Task\n4. Delete Task\n5. Exit",
    );

    stdout.write("Enter your choice: ");
    var choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Enter task: ");
        var task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) taskManager.addTask(task);
        break;
      case "2":
        taskManager.showTask();
        break;
      case "3":
        stdout.write("Enter task number to mark as completed: ");
        var index = int.tryParse(stdin.readLineSync()!);
        if (index != null) taskManager.completeTask(index - 1);
        break;
      case "4":
        stdout.write("Enter task number to delete: ");
        var index = int.tryParse(stdin.readLineSync()!);
        if (index != null) taskManager.deleteTask(index - 1);
        break;
      case "5":
        exit(0);
      default:
        print("Invalid choice");
    }
  }
}
