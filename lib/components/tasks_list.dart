import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(text: 'test'),
    Task(text: 'test'),
    Task(text: 'test'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
        );
      },
      itemCount: tasks.length,
    );
  }
}
