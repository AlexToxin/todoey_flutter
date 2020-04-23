import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/themes/main.dart';

class TaskTile extends StatefulWidget {
  final String text;
  bool _checked = false;

  TaskTile({this.text});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        widget.text,
        style: MainTheme.kItemTextStyle.copyWith(
          decoration: widget._checked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: widget._checked,
        onChanged: (bool value) {
          setState(() {
            widget._checked = value;
          });
        },
        activeColor: MainTheme.kPrimaryColor,
      ),
    );
  }
}
