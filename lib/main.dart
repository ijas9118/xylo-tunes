import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color,required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.pink.shade300, soundNumber: 1),
                buildKey(color: Colors.pink.shade400, soundNumber: 2),
                buildKey(color: Colors.pink.shade500, soundNumber: 3),
                buildKey(color: Colors.pink.shade600, soundNumber: 4),
                buildKey(color: Colors.pink.shade700, soundNumber: 5),
                buildKey(color: Colors.pink.shade800, soundNumber: 6),
                buildKey(color: Colors.pink.shade900, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
