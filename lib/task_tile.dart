import 'dart:ui';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallBack;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightGreen,
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
      ),
    );
  }
}

// class Taskcheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxState;
//
//   Taskcheckbox({this.checkboxState, this.toggleCheckboxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkboxState,
//       activeColor: Colors.lightBlueAccent,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
