import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _list = [
    Task(text: 'test'),
    Task(text: 'test'),
    Task(text: 'test'),
  ];

  UnmodifiableListView<Task> get list {
    return UnmodifiableListView(_list);
  }

  void addTask(text) {
    _list.add(Task(text: text));
    notifyListeners();
  }

  int get taskCount {
    return _list.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  deleteTask(Task task) {
    _list.remove(task);
    notifyListeners();
  }
}
