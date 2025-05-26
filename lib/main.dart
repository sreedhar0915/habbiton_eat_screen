import 'package:flutter/material.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/eat_screen.dart/eat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EatScreen(),
    );
  }
}
