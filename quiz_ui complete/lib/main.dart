import 'package:flutter/material.dart';
import 'Program4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Program4(),
      debugShowCheckedModeBanner: false,
    );
  }
}
