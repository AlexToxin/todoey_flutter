import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/themes/main.dart';

class Task extends StatefulWidget {
  final String text;
  bool _checked = false;

  Task({this.text});

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          widget.text,
          style: MainTheme.kItemTextStyle.copyWith(
            decoration: widget._checked
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        Checkbox(
          value: widget._checked,
          onChanged: (bool value) {
            setState(() {
              widget._checked = value;
            });
          },
          focusColor: MainTheme.kTextColor,
        )
      ],
    );
  }
}
