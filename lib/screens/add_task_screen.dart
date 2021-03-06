import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/themes/main.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onClick;

  AddTaskScreen({this.onClick});

  @override
  Widget build(BuildContext context) {
    String newTaskText;

    return SingleChildScrollView(
      child: Container(
        padding:
        EdgeInsets.only(bottom: MediaQuery
            .of(context)
            .viewInsets
            .bottom),
        color: Color(0xFF757575),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: MainTheme.kTitleTextStyle.copyWith(
                    color: MainTheme.kPrimaryColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(),
                  onChanged: (value) {
                    newTaskText = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                FlatButton(
                  color: MainTheme.kPrimaryColor,
                  onPressed: () {
                    onClick(newTaskText);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: MainTheme.kSubtitleTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
