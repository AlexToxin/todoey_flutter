import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/components/task_tile.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.list[index];
            return TaskTile(
              task: task,
              callback: () => taskData.updateTask(task),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
