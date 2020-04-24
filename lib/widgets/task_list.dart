import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_state.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskState>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  setState(() {
                    taskData.tasks[index].toggleDone();
                  });
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
