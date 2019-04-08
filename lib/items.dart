import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<String> _items;

  Items(this._items);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _items
          .map((item) => Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(item),
                ),
              ))
          .toList(),
    );
  }
}
