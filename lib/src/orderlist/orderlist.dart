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
      child: Scaffold(
        appBar: AppBar(
          title: StreamBuilder<Order>(
              stream: _orderListBloc.order,
              builder: (BuildContext context, AsyncSnapshot<Order> snapshot) {
                if (!snapshot.hasData) {
                  return Text("Loading...");
                }
                return _dateText(snapshot.data.date);
              }),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                final Product product = await showSearch<Product>(
                  context: context,
                  delegate: ProductSearchDelegate(searchBloc: _searchBloc),
                );
                if (product != null) _orderListBloc.addOrderItem(product: product);
              },
            ),
          ],
        ),
        body: StreamBuilder(
          stream: _orderListBloc.orderItems,
          builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
            if (!snapshot.hasData) {
              return Center();
            }
            return _OrderListViewBuilder(items: snapshot.data);
          },
        ),
      ),
    );
  }

  Widget _dateText(int date) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date * 1000);
    DateFormat format = DateFormat.MMMMd();
    String dateString = format.format(dateTime);

    return Text(dateString);
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
    OrderListBloc orderListBloc = BlocProvider.of<OrderListBloc>(context);

    String requested = item.quantityRequested.toString();
    String uom = item.product.uom;

    Future<String> _showDialog(BuildContext context) async {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return _ShowDialogForm(item: item);
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
      onDismissed: (direction) => orderListBloc.removeOrderItem(item: item),
      direction: DismissDirection.endToStart,
      child: ListTile(
        title: Text(
          item.product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text("$requested $uom"),
        trailing: Icon(Icons.edit),
        onTap: () async {
          String quantity = await _showDialog(context);
          if (quantity != null) orderListBloc.modifyRequestedQuantity(item: item, quantity: int.parse(quantity));
        },
      ),
    );
  }
}

class _ShowDialogForm extends StatefulWidget {
  _ShowDialogForm({this.item});

  final Item item;

  @override
  _ShowDialogFormState createState() => _ShowDialogFormState();
}

class _ShowDialogFormState extends State<_ShowDialogForm> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController =
        TextEditingController(text: widget.item.quantityRequested == 0 ? "" : widget.item.quantityRequested.toString());
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
          child: Text("CANCEL"),
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text("ACCEPT"),
          onPressed: () => Navigator.pop(context, _textEditingController.text),
        )
      ],
    );
  }
}
