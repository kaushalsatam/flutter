import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: const Text(
              "I Am Poor",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey[900],
          ),
          body: const Center(
              child: Padding(
            padding: EdgeInsets.all(48.0),
            child: Image(
              image: AssetImage(
                "images/coal.png",
              ),
            ),
          ),),
        ),);
  }
}
