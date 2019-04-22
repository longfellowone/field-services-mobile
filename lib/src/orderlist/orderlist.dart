import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';

class OrderWidget extends StatelessWidget {
  OrderWidget({this.api, this.id, this.date});

  final SupplyApi api;
  final String id;
  final int date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(date.toString()),
      ),
      body: BlocProvider<OrderListBloc>(
        bloc: OrderListBloc(
          api: api,
          id: id,
        ),
        child: _OrderList(),
      ),
    );
  }
}

class _OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderListBloc _ordersListBloc = BlocProvider.of<OrderListBloc>(context);

    return StreamBuilder(
      stream: _ordersListBloc.order,
      builder: (BuildContext context, AsyncSnapshot<Order> snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data.id);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
