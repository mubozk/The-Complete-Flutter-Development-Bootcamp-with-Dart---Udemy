import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
          bottom: 60,
        ),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              child: Icon(
                Icons.list,
                color: Colors.lightBlueAccent,
                size: 33.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('TODOEY'),
          ],
        ),
      ),
    );
  }
}
