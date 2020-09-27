import 'package:flutter/material.dart';
import 'package:todolist/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todolist/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        builder: (context) => TaskData(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
          home: TaskScreen(),
        ),
    );
  }
}
