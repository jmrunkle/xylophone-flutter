import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              nextBar(Colors.red, 1),
              nextBar(Colors.orange, 2),
              nextBar(Colors.yellow, 3),
              nextBar(Colors.green, 4),
              nextBar(Colors.blue, 5),
              nextBar(Colors.indigo, 6),
              nextBar(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextBar(Color color, int note) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        child: Container(
          color: color,
          width: double.infinity,
        ),
        onPressed: () =>
            AssetsAudioPlayer.playAndForget(Audio('assets/note$note.wav')),
      ),
    );
  }
}
