import 'package:flutter/material.dart';

import "./screen.dart";

void main() {
  runApp(const FlutterChip8());
}

class FlutterChip8 extends StatelessWidget {
  const FlutterChip8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chip8",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(title: "Chip8"),
    );
  }
}
