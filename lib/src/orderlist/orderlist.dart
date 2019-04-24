import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/orderlist/orderlist_bloc.dart';
import 'package:myapp/src/service/service_provider.dart';
import 'package:myapp/src/service/supply.dart';

class OrderListWidget extends StatelessWidget {
  OrderListWidget({this.orderSummary});

  final OrderSummary orderSummary;

  @override
  Widget build(BuildContext context) {
    SupplyService _supplyService = ServiceProvider.of<SupplyService>(context);

    DateTime date = DateTime.fromMillisecondsSinceEpoch(orderSummary.date * 1000);
    DateFormat format = DateFormat.MMMMd();
    String dateString = format.format(date);
    String orderStatus = orderSummary.status;

    return BlocProvider<OrderListBloc>(
      bloc: OrderListBloc(
        id: orderSummary.id,
        service: _supplyService,
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
          return Center();
        }
        return ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(height: 0),
          itemCount: snapshot.data.order.items.length,
          itemBuilder: (BuildContext context, int index) => _OrderListTile(
                item: snapshot.data.order.items[index],
              ),
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
      onDismissed: (direction) => print(item.product.id),
      direction: DismissDirection.endToStart,
      child: ListTile(
        title: Text(
          item.product.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text("$requested $uom"),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
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
