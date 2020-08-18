import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(new ColorGeneratorApp());
}

class ColorGeneratorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Test task for Solid Software',
        home: new ColorfulHome(),
    );
  }
}

class ColorfulHome extends StatefulWidget {
  @override
  State createState() => new _ColorfulState();
}

class _ColorfulState extends State<ColorfulHome> {

  final Random _random = new Random();
  Color _color = Colors.orange;
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    
    return new Scaffold(
      body: new Center(
        child: new GestureDetector(
          onTap: () {
            setState(() {
              _color = new Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
              );
            });
          },
          child: new AnimatedContainer(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              color: _color
            ),
            duration: Duration(seconds: 1),
            child: new Center(
              child: Text('Hey there'),
            ),
          ),
        ),
      ),
    );
  }
}

