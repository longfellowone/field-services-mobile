import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  static const String routeName = '/projects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of projects"),
      ),
      body: Column(
        children: <Widget>[
          Text("project 1"),
          Text("project 2"),
        ],
      ),
    );
  }
}
