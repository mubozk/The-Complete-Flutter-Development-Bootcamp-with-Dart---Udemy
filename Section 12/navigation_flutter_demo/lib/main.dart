import 'package:flutter/material.dart';
import 'Screen0.dart';
import 'Screen1.dart';
import 'Screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '0' ,
      routes: {
        '0' : (context) => Screen0(),
        'Screen1': (context) => Screen1(),
        'Screen2': (context) => Screen2(),
      },
    );
  }
}