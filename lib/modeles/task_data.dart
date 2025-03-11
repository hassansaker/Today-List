import 'package:flutter/material.dart';
import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy some tea')];

  void addTask(String newtask) {
    tasks.add(Task(name: newtask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
