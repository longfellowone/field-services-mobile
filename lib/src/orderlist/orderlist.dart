import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';
import 'package:myapp/src/search/search.dart';
import 'package:myapp/src/search/search_bloc.dart';
import 'package:myapp/src/service/service_provider.dart';
import 'package:myapp/src/service/supply.dart';

class OrderListWidget extends StatefulWidget {
  OrderListWidget({this.orderId}); // TEMP date

  final String orderId;

  @override
  _OrderListWidgetState createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  OrderListBloc _orderListBloc;
  SearchBloc _searchBloc;

  void didChangeDependencies() {
    super.didChangeDependencies();
    final SupplyService _supply = ServiceProvider.of<SupplyService>(context);

    _orderListBloc = OrderListBloc(
      service: _supply,
      id: widget.orderId,
    );

    _searchBloc = SearchBloc(service: _supply);
  }

  Future<void> _pushShowSendConfirmation({OrderListBloc bloc}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return _ShowSendConfirmation(
            bloc: bloc,
          );
        },
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderListBloc>(
      bloc: _orderListBloc,
      child: StreamBuilder<Order>(
          stream: _orderListBloc.order,
          builder: (BuildContext context, AsyncSnapshot<Order> snapshot) {
            if (!snapshot.hasData) {
              return Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            return Scaffold(
              appBar: AppBar(
                title: _dateStatusText(date: snapshot.data.date, status: snapshot.data.status),
                actions: <Widget>[
                  if (snapshot.data.status == "Draft")
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => _pushShowSendConfirmation(bloc: _orderListBloc),
                    ),
                  if (snapshot.data.status == "Draft")
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () async {
                        final Product product = await showSearch<Product>(
                          context: context,
                          delegate: ProductSearchDelegate(searchBloc: _searchBloc),
                        );
                        _orderListBloc.addOrderItem(product: product);
                      },
                    ),
                ],
              ),
              body: StreamBuilder(
                stream: _orderListBloc.orderItems,
                builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
                  if (!snapshot.hasData) {
                    return Container();
                  }
                  return _OrderListViewBuilder(items: snapshot.data);
                },
              ),
            );
          }),
    );
  }

  Widget _dateStatusText({int date, String status}) {
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    final DateFormat format = DateFormat.MMMMd();
    final String dateString = format.format(dateTime);

    return Text('$dateString ($status)');
  }
}

class _ShowSendConfirmation extends StatefulWidget {
  _ShowSendConfirmation({this.bloc});

  final OrderListBloc bloc;

  @override
  _ShowSendConfirmationState createState() => _ShowSendConfirmationState();
}

class _ShowSendConfirmationState extends State<_ShowSendConfirmation> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // https://stackoverflow.com/questions/45774203/flutter-listview-shrink-wrap-nested-listview

    return Scaffold(
      appBar: AppBar(
        title: Text("Review Order"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Special Instructions'),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
//                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200], width: 0.0),
                ),
              ),
              maxLines: 10,
              controller: _textEditingController,
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("SEND"),
                onPressed: () {
                  widget.bloc.sendOrder(comments: _textEditingController.text);
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text("CANCEL"),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//StreamBuilder<List<Item>>(
//stream: widget.items,
//builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
//if (!snapshot.hasData) {
//return Container();
//}
//return Expanded(
//child: ListView.builder(
//itemCount: snapshot.data.length,
//physics: ClampingScrollPhysics(),
//shrinkWrap: true,
//itemBuilder: (BuildContext context, int index) => _ItemConfirmationCard(
//item: snapshot.data[index],
//),
//),
//);
//},
//)

//class _ItemConfirmationCard extends StatelessWidget {
//  _ItemConfirmationCard({this.item});
//
//  final Item item;
//
//  @override
//  Widget build(BuildContext context) {
//    return Text(item.product.name);
//  }
//}

class _OrderListViewBuilder extends StatelessWidget {
  _OrderListViewBuilder({this.items});

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => _OrderListTile(
            item: items[index],
          ),
    );
  }
}

class _OrderListTile extends StatelessWidget {
  _OrderListTile({this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    final OrderListBloc _orderListBloc = BlocProvider.of<OrderListBloc>(context);

    final String requested = item.quantityRequested.toString();
    final String uom = item.product.uom;

    Future<String> _showEditQuantityDialog(BuildContext context) async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => _ShowEditQuantityDialog(item: item),
      );
    }

    return Dismissible(
      // Key hack to keep from crashing list with loss of network
      key: Key(item.product.id + Random().nextInt(10000).toString()),
      background: Container(
        color: Colors.red,
        alignment: AlignmentDirectional.centerEnd,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      onDismissed: (_) => _orderListBloc.removeOrderItem(item: item),
      direction: DismissDirection.endToStart,
      child: ListTile(
        title: Text(
          item.product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text("$requested $uom"),
        trailing: (item.itemStatus == "New") ? Icon(Icons.edit) : Icon(null),
        onTap: () async {
          final String quantity = await _showEditQuantityDialog(context);
          _orderListBloc.modifyRequestedQuantity(item: item, quantity: quantity);
        },
      ),
    );
  }
}

class _ShowEditQuantityDialog extends StatefulWidget {
  _ShowEditQuantityDialog({this.item});

  final Item item;

  @override
  _ShowEditQuantityDialogState createState() => _ShowEditQuantityDialogState();
}

class _ShowEditQuantityDialogState extends State<_ShowEditQuantityDialog> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController.fromValue(
        TextEditingValue(text: widget.item.quantityRequested == 0 ? "" : widget.item.quantityRequested.toString()));
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Edit Quantity"),
      content: TextField(
        controller: _textEditingController,
        autofocus: true,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        maxLength: 6,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("CANCEL"),
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text("DONE"),
          onPressed: () =>
              Navigator.pop(context, _textEditingController.text == null ? 0 : _textEditingController.text),
        )
      ],
    );
  }
}
