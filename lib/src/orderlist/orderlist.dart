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
    SupplyService _supply = ServiceProvider.of<SupplyService>(context);

    _orderListBloc = OrderListBloc(
      service: _supply,
      id: widget.orderId,
    );

    _searchBloc = SearchBloc(service: _supply);
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
                  if (snapshot.data.status == "New")
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return _ShowSendConfirmation();
                              },
                              fullscreenDialog: true,
                            ),
                          ),
                    ),
                  if (snapshot.data.status == "New")
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
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    DateFormat format = DateFormat.MMMMd();
    String dateString = format.format(dateTime);

    return Text('$dateString ($status)');
  }
}

class _ShowSendConfirmation extends StatefulWidget {
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
    OrderListBloc _orderListBloc = BlocProvider.of<OrderListBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Review Order"),
      ),
      body: Column(
        children: <Widget>[
          Text("Special Instruction"),
          RaisedButton(
            child: Text("SEND"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("CANCEL"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

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
    OrderListBloc _orderListBloc = BlocProvider.of<OrderListBloc>(context);

    String requested = item.quantityRequested.toString();
    String uom = item.product.uom;

    Future<String> _showEditQuantityDialog(BuildContext context) async {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return _ShowEditQuantityDialog(item: item);
        },
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
        trailing: (item.itemStatus != "Filled" && item.itemStatus != "Order Exceeded") ? Icon(Icons.edit) : Icon(null),
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
        maxLength: 8,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("DONE"),
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text("ACCEPT"),
          onPressed: () =>
              Navigator.pop(context, _textEditingController.text == null ? 0 : _textEditingController.text),
        )
      ],
    );
  }
}
