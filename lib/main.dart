import 'package:assignment_1/text.dart';
import 'package:flutter/material.dart';
import './text-control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _myIndex = 0;

  final _myText = [
    'You are king',
    'I am, ME',
    'Woop swag',
    'Got it working',
    'Your awesome',
    'This is so cool' 'Changing Again'
  ];

  void buttonTap() {
    setState(() {
      _myIndex = _myIndex + 1;
    });
    if (_myIndex >= _myText.length) {
      _myIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Change The Word'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Texts(myText: _myText, myIndex: _myIndex),
              TextControl(buttonTap)
            ],
          ),
        ),
      ),
    );
  }
}
