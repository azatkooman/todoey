import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/add_state.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskState>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return InkWell(
              onLongPress: () {
                taskData.deleteTask(index);
              },
              child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (checkboxState) {
                    taskData.updateTask(task);
                  }),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
