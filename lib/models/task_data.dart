import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount {
    return tasks.length;
  }

  addTask(String taskTitle) {
    this.tasks.add(new Task(name: taskTitle));
    notifyListeners();
  }

  toggleTaskDone(int index) {
    this.tasks[index].toggleDone();
    notifyListeners();
  }
}
