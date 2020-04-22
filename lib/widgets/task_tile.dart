import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  //final Function checkboxCallback;

  TaskTile({this.isChecked, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      // onChanged: checkboxCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      controlAffinity: ListTileControlAffinity.trailing,

      //subtitle: Text('Subtitle'),
      //secondary: Icon(Icons.archive),
      activeColor: Colors.lightBlueAccent,
    );
  }
}
