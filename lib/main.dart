import 'package:flutter/material.dart';
import 'dart:math'; // For generating random colors

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _textColor = Colors.black; // Initial text color

  void _changeTextColor() {
    setState(() {
      // Generate a random color
      _textColor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Hello, World!',
                  style: TextStyle(color: _textColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0), // Add some padding around the button
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: _changeTextColor,
                  child: Text('Change Text Color'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
