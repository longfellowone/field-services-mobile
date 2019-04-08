import 'package:flutter/material.dart';

import 'items_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> _items = ['item1', 'item2', 'item3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My appbar'),
        ),
        body: ItemsProvider(_items),
      ),
    );
  }
}
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}

//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:grpc/grpc.dart';
//import 'package:myapp/src/generated/helloworld.pb.dart';
//import 'package:myapp/src/generated/helloworld.pbgrpc.dart';
//
//Future<void> test(List<String> args) async {
//  final channel = new ClientChannel('localhost',
//      port: 50051, options: const ChannelOptions(credentials: const ChannelCredentials.insecure()));
//  final stub = new GreeterClient(channel);
//
//  final name = args.isNotEmpty ? args[0] : 'world';
//
//  try {
//    final response = await stub.sayHello(new HelloRequest()..name = name);
//    print('Greeter client received: ${response.message}');
//  } catch (e) {
//    print('Caught error: $e');
//  }
//  await channel.shutdown();
//}
//
//// Alt-Enter
//// Ctrl-Space
//// Shift-Enter
//// Ctrl+W -> Ctrl+Alt+M or Ctrl+Alt+W
//// Ctrl+Shift+I
//// Shift+Del
////
//// Prefix stless: Create a new subclass of StatelessWidget.
//// Prefix stful: Create a new subclass of StatefulWidget and it’s associated State subclass.
////
//// https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b
////
//// protoc -I=$SRC_DIR --dart_out=$DST_DIR $SRC_DIR/addressbook.proto
//// protoc -I proto/ proto/helloworld.proto --dart_out=grpc:lib/src/generated
//// protoc --dart_out=grpc:lib/src/generated -I proto proto/helloworld.proto
////
//// Add assets into pubspec.yaml
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter...'),
//        ),
//        body: Center(
//          child: Column(
//            children: <Widget>[
//              Text('Hello World'),
//              MaterialButton(
//                child: Text('Submit'),
//                onPressed: () {},
//                color: Colors.blue,
//              )
//            ],
//            mainAxisAlignment: MainAxisAlignment.center,
//          ),
//        ),
//      ),
//    );
//  }
//}
