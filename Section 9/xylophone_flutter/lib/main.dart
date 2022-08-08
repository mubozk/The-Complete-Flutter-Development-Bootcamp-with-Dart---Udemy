import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  Expanded buildKey(int index) {
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: () {
            playSound(index);
          },
        ),
        color: Colors.blueGrey[index * 100],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              for (var i = 1; i <= 7; i++) buildKey(i),
            ],
          ),
        ),
      ),
    );
  }
}
