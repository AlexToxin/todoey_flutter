import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;

  TasksList({@required this.tasks});

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
