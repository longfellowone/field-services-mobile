import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/orderlist/orderlist.dart';
import 'package:myapp/src/orders/orders_bloc.dart';
import 'package:myapp/src/service/service_provider.dart';
import 'package:myapp/src/service/supply.dart';

class OrdersWidget extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    SupplyService _supply = ServiceProvider.of<SupplyService>(context);

    return BlocProvider<OrdersBloc>(
      bloc: OrdersBloc(service: _supply, projectId: 'cf510766-faf7-415e-a067-0c5ae5cb2ae8'),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Orders'),
        ),
        body: _OrdersListViewBuilder(),
        floatingActionButton: _NewOrderFloatingActionButton(),
      ),
    );
  }
}

class _NewOrderFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () => _ordersBloc.createOrder(),
    );
  }
}

class _OrdersListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    return StreamBuilder(
      stream: _ordersBloc.orderSummaries,
      builder: (BuildContext context, AsyncSnapshot<List<OrderSummary>> snapshot) {
        if (!snapshot.hasData) {
          return Center();
        }
        return ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
          itemCount: snapshot.data.length,
          itemBuilder: (BuildContext context, int index) => _OrdersListTile(
                orderSummary: snapshot.data[index],
                index: index,
              ),
        );
      },
    );
  }
}

class _OrdersListTile extends StatelessWidget {
  _OrdersListTile({this.orderSummary, this.index});

  final OrderSummary orderSummary;
  final int index;

  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    DateTime date = DateTime.fromMillisecondsSinceEpoch(orderSummary.date * 1000);
    DateFormat format = DateFormat.yMMMMEEEEd();
    String dateString = format.format(date);
    String status = orderSummary.status;

    return Dismissible(
      key: Key(orderSummary.id),
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
      onDismissed: (_) => _ordersBloc.deleteOrder(orderSummary: orderSummary, index: index),
      child: ListTile(
        title: Text(
          dateString,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: (status == "New") ? Icon(Icons.edit) : Icon(Icons.keyboard_arrow_right),
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => OrderListWidget(orderId: orderSummary.id),
              ),
            ),
      ),
    );
  }
}
