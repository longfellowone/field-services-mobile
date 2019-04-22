import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/orderlist/orderlist.dart';
import 'package:myapp/src/orders/orders_bloc.dart';

class OrderSummaryWidget extends StatelessWidget {
  OrderSummaryWidget({this.api});

  static const String routeName = '/';
  final SupplyApi api;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrdersBloc>(
      bloc: OrdersBloc(api: api),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Orders'),
        ),
        body: _OrderSummaryBuilder(api: api),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _OrderSummaryBuilder extends StatelessWidget {
  _OrderSummaryBuilder({this.api});

  final SupplyApi api;

  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    return StreamBuilder(
      stream: _ordersBloc.orderSummaries,
      builder: (BuildContext context, AsyncSnapshot<List<OrderSummary>> snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return _OrderSummaryListItem(
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

class _OrderSummaryListItem extends StatelessWidget {
  _OrderSummaryListItem({this.api, this.order});

  final SupplyApi api;
  final OrderSummary order;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(order.id),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => OrderListWidget(
                  api: api,
                  id: order.id,
                  date: order.date,
                  status: order.status,
                ),
          )),
    );
  }
}
