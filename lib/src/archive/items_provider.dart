//import 'package:flutter/material.dart';
//import 'package:grpc/grpc.dart';
//import 'package:myapp/items.dart';
//import 'package:myapp/src/generated/helloworld.pb.dart';
//import 'package:myapp/src/generated/helloworld.pbgrpc.dart';
//
//// https://flutter.dev/docs/cookbook/lists/long-lists
//
//Future<String> test(String arg) async {
//  final channel = ClientChannel('192.168.0.104',
//      port: 9090, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
//  final stub = GreeterClient(channel);
//
//  final name = arg.isNotEmpty ? arg : 'world';
//
//  try {
//    final response = await stub.sayHello(new HelloRequest()..name = name);
//    return response.message;
//  } catch (e) {
//    print('Caught error: $e');
//  }
//  await channel.shutdown();
//  return "";
//}
//
//class ItemsProvider extends StatefulWidget {
//  final List<String> _initialItems;
//
//  ItemsProvider(this._initialItems);
//
//  @override
//  _ItemsProviderState createState() => _ItemsProviderState();
//}
//
//class _ItemsProviderState extends State<ItemsProvider> {
//  List<String> _items = [];
//
//  @override
//  void initState() {
//    _items.addAll(widget._initialItems);
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        RaisedButton(
//          child: Text('my button'),
//          onPressed: () {
//            test('').then((response) => {
//                  setState(() {
//                    _items.add(response);
//                  })
//                });
//          },
//        ),
//        Items(_items)
//      ],
//    );
//  }
//}
//
