import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/orderlist/orderlist.dart';
import 'package:myapp/src/orders/orders_bloc.dart';

class Orders extends StatelessWidget {
  Orders({this.api});

  static const String routeName = '/orders';
  final SupplyApi api;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: BlocProvider(
        bloc: OrdersBloc(api: api),
        child: OrderSummaryList(api: api),
      ),
    );
  }
}

class OrderSummaryList extends StatelessWidget {
  OrderSummaryList({this.api});

  final SupplyApi api;

  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    return StreamBuilder(
      stream: _ordersBloc.orderSummaries,
      builder: (BuildContext context, AsyncSnapshot<List<OrderSummary>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return OrderSummaryListItem(
                api: api,
                order: snapshot.data[index],
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

class OrderSummaryListItem extends StatelessWidget {
  OrderSummaryListItem({this.api, this.order});

  final SupplyApi api;
  final OrderSummary order;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(order.id),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => OrderWidget(
                  api: api,
                  id: order.id,
                  date: order.date,
                ),
          )),
    );
  }
}

//Column(
//children: <Widget>[
//Text(snapshot.data[0].id),
//RaisedButton(
//child: Text('back to home'),
//onPressed: () {
//Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
////                      Navigator.popUntil(context, ModalRoute.withName("/"));
//},
//)
//],
//);
