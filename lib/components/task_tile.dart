import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/themes/main.dart';

class TaskTile extends StatefulWidget {
  final Task task;

  TaskTile({this.task});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        widget.task.text,
        style: MainTheme.kItemTextStyle.copyWith(
          decoration: widget.task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: widget.task.isDone,
        onChanged: (bool value) {
          setState(() {
            widget.task.toggleDone();
          });
        },
        activeColor: MainTheme.kPrimaryColor,
      ),
    );
  }
}
