import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/components/tasks_list.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/screens/add_task_screen.dart';
import 'package:todoeyflutter/themes/main.dart';

class TasksScreen extends StatelessWidget {
  static final id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.kPrimaryColor,
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
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
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
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              height: 300,
              decoration: BoxDecoration(
                color: MainTheme.kSecondColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen(
              onClick: (taskText) {
                Provider.of<TaskData>(context, listen: false).addTask(taskText);
              },
            ),
          );
        },
        backgroundColor: MainTheme.kPrimaryColor,
        child: Icon(
          Icons.add,
          color: MainTheme.kSecondColor,
          size: 50,
        ),
      ),
    );
  }
}
