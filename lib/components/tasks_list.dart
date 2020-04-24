import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<TaskTile> tasks = [
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
    TaskTile(text: 'test'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasks,
    );
  }
}
