import './main.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback myChange;

  TextControl(this.myChange);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.amber),
      onPressed: myChange,
      child: const Text('Change Text'),
    );
  }
}
