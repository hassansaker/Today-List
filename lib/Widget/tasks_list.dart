import 'package:app/Widget/task_list.dart';
import 'package:app/modeles/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            itemCount: taskdata.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                  ischeck: taskdata.tasks[index].isDone,
                  taskTitle: taskdata.tasks[index].name,
                  checkboxChange: (bool? newvalue) {
                    taskdata.updateTask(taskdata.tasks[index]);
                  },
                  listTiledelete: () {
                    taskdata.deleteTask(taskdata.tasks[index]);
                  });
            });
      },
    );
  }
}
