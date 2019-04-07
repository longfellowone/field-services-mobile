import 'package:flutter/material.dart';

// Alt-Enter
// Ctrl-Space
// Shift-Enter
// Ctrl+W -> Ctrl+Alt+M or Ctrl+Alt+W
// Ctrl+Shift+I

// Prefix stless: Create a new subclass of StatelessWidget.
// Prefix stful: Create a new subclass of StatefulWidget and it’s associated State subclass.

// https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
