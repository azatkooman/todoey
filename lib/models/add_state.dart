import 'package:flutter/material.dart';

import 'package:todoey/models/task.dart';

class TaskState with ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  int get taskCount {
    return _tasks.length;
  }

  set tasks(List<Task> tasks) {
    _tasks = tasks;
    notifyListeners();
  }

  void addNewTask(Task newTask) {
    _tasks.add(newTask);

    notifyListeners();
  }
}
