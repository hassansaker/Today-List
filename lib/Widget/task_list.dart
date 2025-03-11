import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final void Function() listTiledelete;
  TaskTile(
      {required this.ischeck,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTiledelete});

  final bool ischeck;
  final String taskTitle;
  final Function(bool?) checkboxChange;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: ischeck ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          value: ischeck,
          activeColor: Colors.teal[500],
          onChanged: checkboxChange),
      onLongPress: listTiledelete,
    );
  }
}
