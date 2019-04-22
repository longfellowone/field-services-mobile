import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';

class OrderListWidget extends StatelessWidget {
  OrderListWidget({this.api, this.id, this.date, this.status});

  final SupplyApi api;
  final String id;
  final int date;
  final String status;

  @override
  Widget build(BuildContext context) {
    String stringDate = date.toString();

    return BlocProvider<OrderListBloc>(
      bloc: OrderListBloc(
        id: id,
        api: api,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("$stringDate ($status)"),
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
        body: _OrderListBuilder(),
      ),
    );
  }
}

class _OrderListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderListBloc _ordersListBloc = BlocProvider.of<OrderListBloc>(context);

    return StreamBuilder(
      stream: _ordersListBloc.order,
      builder: (BuildContext context, AsyncSnapshot<Order> snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data.items.length,
            separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
            itemBuilder: (BuildContext context, int index) {
              return _OrderListItem(
                item: snapshot.data.items[index],
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class _OrderListItem extends StatelessWidget {
  _OrderListItem({this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    String requested = item.quantityRequested.toString();
    String uom = item.product.uom;

    return Container(
      child: ListTile(
        title: Text(item.product.name),
        subtitle: Text("$requested $uom"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      ),
    );
  }
}
