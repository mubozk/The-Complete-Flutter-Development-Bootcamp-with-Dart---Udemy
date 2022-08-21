import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 5),
                ),
                labelText: 'Add a task',
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: Expanded(
                child: Container(
                  child: Text('Add'),
                  color: Colors.lightBlueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
