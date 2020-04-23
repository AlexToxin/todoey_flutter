import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoeyflutter/components/task.dart';
import 'package:todoeyflutter/themes/main.dart';

class TasksScreen extends StatelessWidget {
  static final id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: MainTheme.kPrimaryColor,
        child: Icon(
          Icons.add,
          color: MainTheme.kSecondColor,
          size: 50,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 100,
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: MainTheme.kSecondColor,
                  radius: 35,
                  child: Icon(
                    Icons.list,
                    color: MainTheme.kPrimaryColor,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Todoey',
                  style: MainTheme.kTitleTextStyle,
                ),
                Text(
                  '12 Tasks',
                  style: MainTheme.kSubtitleTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: MainTheme.kSecondColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: ListView(
                  children: <Widget>[
                    Task(text: 'test'),
                    Task(text: 'test'),
                    Task(text: 'test'),
                    Task(text: 'test'),
                    Task(text: 'test'),
                    Task(text: 'test'),
                    Task(text: 'test'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
