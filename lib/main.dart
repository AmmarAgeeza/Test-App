import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //i used random class to generate random numbers for colors
  Random random = Random();

  //color variable
  Color color = Colors.deepOrange;

  // this method is responsible for changing color value
  void changeColor() {
    setState(() {
      //A => Alpha
      //R => Red
      //G => Green
      //B => Blue
      color = Color.fromARGB(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: InkWell(
          onTap: () => changeColor(),
          child: const Center(
            child: Text('Hello There'),
          )),
    );
  }
}
