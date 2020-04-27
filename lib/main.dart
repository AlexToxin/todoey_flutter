import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/screens/tasks_screen.dart';

import 'models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        initialRoute: TasksScreen.id,
        routes: {
          TasksScreen.id: (context) => TasksScreen(),
        },
      ),
      create: (BuildContext context) => TaskData(),
    );
  }
}
