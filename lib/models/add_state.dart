import 'package:flutter/material.dart';

import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskState with ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

//  set tasks(List<Task> tasks) {
//    _tasks = tasks;
//    notifyListeners();
//  }

  void addNewTask(Task newTask) {
    _tasks.add(newTask);

    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
