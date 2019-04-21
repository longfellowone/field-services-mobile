import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("link to projects"),
            onPressed: () => Navigator.pushNamed(context, "/projects"),
          ),
          RaisedButton(
            child: Text("link to orders"),
            onPressed: () => Navigator.pushNamed(context, "/orders"),
          ),
        ],
      ),
    );
  }
}
