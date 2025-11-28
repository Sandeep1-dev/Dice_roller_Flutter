import 'package:flutter/material.dart';
import 'package:quiz_test/gradientwidget.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer([
        const Color.fromARGB(255, 71, 197, 228),
        const Color.fromARGB(255, 138, 65, 227),
      ]),
    );
  }
}
