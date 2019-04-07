import 'package:flutter/material.dart';

// Alt-Enter
// Ctrl-Space
// Shift-Enter
// Ctrl+W -> Ctrl+Alt+M or Ctrl+Alt+W
// Ctrl+Shift+I

// Prefix stless: Create a new subclass of StatelessWidget.
// Prefix stful: Create a new subclass of StatefulWidget and it’s associated State subclass.

// https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b

// protoc -I=$SRC_DIR --dart_out=$DST_DIR $SRC_DIR/addressbook.proto
// protoc -I proto/ proto/helloworld.proto --dart_out=grpc:lib/src/generated
// protoc --dart_out=grpc:lib/src/generated -I proto proto/helloworld.proto

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
