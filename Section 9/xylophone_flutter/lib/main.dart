import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  Expanded buildKey(Color col, int noteNo) {
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: () {
            playSound(noteNo);
          },
        ),
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
              buildKey(Colors.blueGrey.shade100, 1),
              buildKey(Colors.blueGrey.shade200, 2),
              buildKey(Colors.blueGrey.shade300, 3),
              buildKey(Colors.blueGrey.shade400, 4),
              buildKey(Colors.blueGrey.shade500, 5),
              buildKey(Colors.blueGrey.shade600, 6),
              buildKey(Colors.blueGrey.shade700, 7),

              // for (var i = 1; i<=7; i+=1 ) {
              // buildKey(1)
              // }

              /*
                Expanded buildKey(int noteNo) {
                  return Expanded(
                    child: Container(
                     child: GestureDetector(
                        onTap: () {
                          playSound(noteNo);
                        },
                        color: Colors.blueGrey.shade'$noteNo'00,
                      ),
                    ),
                 );
                }
               */
            ],
          ),
        ),
      ),
    );
  }
}
