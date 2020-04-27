import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> list = [
    Task(text: 'test'),
    Task(text: 'test'),
    Task(text: 'test'),
  ];

  addTask(text) {
    list.add(Task(text: text));
    notifyListeners();
  }

  int get taskCount {
    return list.length;
  }
}
