import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/api/api_provider.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';

class OrderListWidget extends StatelessWidget {
  OrderListWidget({this.orderSummary});

  final OrderSummary orderSummary;

  @override
  Widget build(BuildContext context) {
    SupplyService service = ServiceProvider.of<SupplyService>(context);

    DateTime date = DateTime.fromMillisecondsSinceEpoch(orderSummary.date * 1000);
    var format = DateFormat.MMMMd();
    var dateString = format.format(date);
    String orderStatus = orderSummary.status;

    return BlocProvider<OrderListBloc>(
      bloc: OrderListBloc(
        id: orderSummary.id,
        service: service,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("$dateString ($orderStatus)"),
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
      builder: (BuildContext context, AsyncSnapshot<FindOrderResponse> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.separated(
          itemCount: snapshot.data.order.items.length,
          separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
          itemBuilder: (BuildContext context, int index) {
            return _OrderListTile(item: snapshot.data.order.items[index]);
          },
        );
      },
    );
  }
}

class _OrderListTile extends StatelessWidget {
  _OrderListTile({this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    String requested = item.quantityRequested.toString();
    String uom = item.product.uom;

    return Dismissible(
      background: Container(
        alignment: AlignmentDirectional.centerEnd,
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      onDismissed: (direction) => print(item.product.id),
      direction: DismissDirection.endToStart,
      child: ListTile(
        title: Text(item.product.name),
        subtitle: Text("$requested $uom"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      ),
      key: Key(item.product.id),
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
