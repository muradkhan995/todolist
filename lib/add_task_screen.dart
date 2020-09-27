import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/Task.dart';
import 'package:todolist/task_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.lightGreen,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.lightGreen,
              onPressed: () {

              Provider.of<TaskData>(context).addTask(newTaskTitle);
              Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
