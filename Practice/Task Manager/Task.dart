class Task {
  String title;
  bool isCompleted;

  Task(this.title, {this.isCompleted = false});

  void statusSwitch() {
    isCompleted = !isCompleted; // Will change the satatus of task
  }
}
