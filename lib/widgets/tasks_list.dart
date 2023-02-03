import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name, //instead of Provider.of<TaskData>(context)
              isChecked:
                  task.isDone, //instead of Provider.of<TaskData>(context)
              checkboxCallBack: (checkboxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount:
              taskData.tasks.length, //instead of Provider.of<TaskData>(context)
        );
      },
    );
    //   children: [
    //     TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //     TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //     TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //   ],
    // );
  }
}
