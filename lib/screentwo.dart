import 'package:flutter/material.dart';
import 'package:task/main.dart';

void main(List<String> args) {
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(child: Container()),
      ),
    );
  }
}
