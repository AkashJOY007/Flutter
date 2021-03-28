import 'package:app/bookssem1.dart';
import 'package:flutter/material.dart';
import 'package:app/home_screen.dart';
import 'home_screen.dart';
import 'package:app/book.dart';
class bookssem1 extends StatefulWidget {
  @override
  _bookssem1State createState() => _bookssem1State();
}

class _bookssem1State extends State<bookssem1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is a actual book page',
      theme:ThemeData(
        primarySwatch:Colors.blue,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home:book(),
    );
  }
}