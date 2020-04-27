import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:todoeyflutter/themes/main.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function callback;

  TaskTile({@required this.task, this.callback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        task.text,
        style: MainTheme.kItemTextStyle.copyWith(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: task.isDone,
        onChanged: (value) {
          callback();
        },
        activeColor: MainTheme.kPrimaryColor,
      ),
    );
  }
}
