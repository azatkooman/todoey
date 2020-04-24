//import 'dart:js';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoey/models/add_state.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  //final List<Task> tasks;

  //AddTaskScreen(this.tasks);

  @override
  Widget build(BuildContext context) {
    String textFieldValue = '';
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            TextField(
              onChanged: (value) {
                textFieldValue = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskState>(context, listen: false)
                    .addNewTask(Task(name: textFieldValue));
                Navigator.pop(context);
              },
              elevation: 5.0,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
