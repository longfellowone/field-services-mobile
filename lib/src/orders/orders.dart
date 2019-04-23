import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/api/service_provider.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/orderlist/orderlist.dart';
import 'package:myapp/src/orders/orders_bloc.dart';

class OrderSummaryWidget extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    SupplyService service = ServiceProvider.of<SupplyService>(context);

    return BlocProvider<OrdersBloc>(
      bloc: OrdersBloc(service: service),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Orders'),
        ),
        body: _OrderSummaryBuilder(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _OrderSummaryBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OrdersBloc _ordersBloc = BlocProvider.of<OrdersBloc>(context);

    return StreamBuilder(
      stream: _ordersBloc.orderSummaries,
      builder: (BuildContext context, AsyncSnapshot<FindProjectOrderDatesResponse> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
          itemCount: snapshot.data.orders.length,
          itemBuilder: (BuildContext context, int index) {
            return _OrderSummaryListTile(orderSummary: snapshot.data.orders[index]);
          },
        );
      },
    );
  }
}

class _OrderSummaryListTile extends StatelessWidget {
  _OrderSummaryListTile({this.orderSummary});

  final OrderSummary orderSummary;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(orderSummary.date * 1000);
    DateFormat format = DateFormat.yMMMMEEEEd();
    String dateString = format.format(date);
    String status = orderSummary.status;

    return ListTile(
      title: Text("$dateString"),
      trailing: (status == "New") ? Icon(Icons.edit) : Icon(Icons.keyboard_arrow_right),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => OrderListWidget(orderSummary: orderSummary),
          )),
    );
  }
}
