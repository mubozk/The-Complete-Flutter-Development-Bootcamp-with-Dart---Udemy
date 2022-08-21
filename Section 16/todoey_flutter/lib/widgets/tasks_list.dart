import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallBack: (bool? checkBoxState) {
              setState(() {
                if (checkBoxState != null) {
                  widget.tasks[index].isDone = checkBoxState;
                } else {
                  widget.tasks[index].isDone = true;
                }
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
