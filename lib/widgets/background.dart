import 'package:flutter/material.dart';
class background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("images/booksem1.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12,BlendMode.darken),
          )
        ),
    );
  }
}