import 'package:flutter/material.dart';
import 'package:myapp/items.dart';

class ItemsProvider extends StatefulWidget {
  final List<String> _initialItems;

  ItemsProvider(this._initialItems);

  @override
  _ItemsProviderState createState() => _ItemsProviderState();
}

class _ItemsProviderState extends State<ItemsProvider> {
  List<String> _items = [];

  @override
  void initState() {
    _items.addAll(widget._initialItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('my button'),
          onPressed: () {
            setState(() {
              _items.add('item4');
            });
          },
        ),
        Items(_items)
      ],
    );
  }
}
