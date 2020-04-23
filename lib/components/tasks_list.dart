import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
        TaskTile(text: 'test'),
      ],
    );
  }
}
