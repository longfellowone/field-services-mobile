import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';

class OrderList extends StatelessWidget {
  OrderList({this.api, this.id});

  final SupplyApi api;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my order"),
      ),
      body: BlocProvider<OrderListBloc>(
        bloc: OrderListBloc(
          api: api,
          id: id,
        ),
        child: OrderMaterialList(),
      ),
    );
  }
}

class OrderMaterialList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrderListBloc _ordersListBloc = BlocProvider.of<OrderListBloc>(context);

    return StreamBuilder(
      stream: _ordersListBloc.order,
      builder: (BuildContext context, AsyncSnapshot<Order> snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          return Text(snapshot.data.id);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
