import 'Task.dart';

class Taskmanager {
  List<Task> tasks = []; //list of task

  void addTask(String title) {
    tasks.add(Task(title));
    print("$title is added");
  }

  void showTask() {
    if (tasks.isEmpty) {
      print("No task found");
    } else {
      for (int i = 0; i < tasks.length; i++) {
        print(
          "${i + 1} - ${tasks[i].title} - ${tasks[i].isCompleted ? "✔ Completed" : "❌ Pending"}",
        );
      }
    }
  }

  void completeTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid index");
    } else {
      tasks[index].statusSwitch();
      print("Marked as ${tasks[index].isCompleted ? "Completed" : "Pending"}");
    }
  }

  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print("Invalid index");
    } else {
      tasks.removeAt(index);
    }
  }
}
