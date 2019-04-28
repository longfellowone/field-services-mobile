import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';
import 'package:myapp/src/service/service_provider.dart';
import 'package:myapp/src/service/supply.dart';

class OrderListWidget extends StatefulWidget {
  OrderListWidget({this.orderId}); // TEMP date

  final String orderId;

  @override
  _OrderListWidgetState createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
  OrderListBloc bloc;

  void didChangeDependencies() {
    super.didChangeDependencies();

    SupplyService _supply = ServiceProvider.of<SupplyService>(context);

    bloc = OrderListBloc(
      service: _supply,
      id: widget.orderId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderListBloc>(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: StreamBuilder<Order>(
              stream: bloc.order,
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
              onPressed: () {},
            ),
          ],
        ),
        body: StreamBuilder(
          stream: bloc.orderItems,
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
      itemBuilder: (BuildContext context, int index) => _OrderListTile(item: items[index]),
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

    return Dismissible(
      key: Key(item.product.id),
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
      onDismissed: (direction) => orderListBloc.removeOrderItem(product: item.product),
      direction: DismissDirection.endToStart,
      child: ListTile(
        title: Text(
          item.product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text("$requested $uom"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => _ItemDetails(item: item),
              ),
            ),
      ),
    );

//    return Card(
//      child: Padding(
//        padding: const EdgeInsets.all(16),
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Text(item.product.name),
//            Text('$requested $uom'),
//          ],
//        ),
//      ),
//    );
  }
}

class _ItemDetails extends StatelessWidget {
  _ItemDetails({this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Quantity"),
      ),
      body: Column(
        children: <Widget>[
          Text(item.product.name),
          RaisedButton(
            child: Text("Save"),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
