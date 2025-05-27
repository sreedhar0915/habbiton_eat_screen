import 'package:flutter/material.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/eat_screen.dart/eat_screen.dart';
import 'package:habbiton_eat_screen/screen/eat_screen/provider/eat_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => EatScreenProvider(),
    )
  ], child: const MyApp()));
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
