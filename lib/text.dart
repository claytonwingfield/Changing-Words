import './main.dart';
import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final List<String> myText;
  final int myIndex;

  Texts({required this.myText, required this.myIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 100.0,
      alignment: Alignment.center,
      child: Text(myText[myIndex]),
    );
  }
}
