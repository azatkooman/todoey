import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_state.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskState>(context).tasks[index].name,
          isChecked: Provider.of<TaskState>(context).tasks[index].isDone,
//            checkboxCallback: (checkboxState) {
//              Provider.of<TaskState>(context).tasks[index].toggleDone();
//            }
        );
      },
      itemCount: Provider.of<TaskState>(context).tasks.length,
    );
  }
}
