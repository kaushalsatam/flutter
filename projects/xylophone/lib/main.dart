import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int keyNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$keyNumber.wav'),
    );
  }

  Expanded createKey(int keyNumber, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(keyNumber);
          // final player = AudioPlayer();
          // player.play(
          //   AssetSource('note$keyNumber.wav'),
          // );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            createKey(1, Colors.red),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note2.wav'),
                  );
                },
                child: Container(
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note3.wav'),
                  );
                },
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note4.wav'),
                  );
                },
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note5.wav'),
                  );
                },
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note6.wav'),
                  );
                },
                child: Container(
                  color: Colors.indigo,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  final player = AudioPlayer();
                  player.play(
                    AssetSource('note7.wav'),
                  );
                },
                child: Container(
                  color: const Color.fromARGB(255, 128, 0, 255),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
