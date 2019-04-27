import 'dart:async';

import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

// Reduce down to one bloc?
class OrderListBloc extends BlocBase {
  OrderListBloc({this.service, this.id}) {
    _findOrder(id);
    print('hi');
  }

  final SupplyService service;
  final String id;

  BehaviorSubject<Order> _orderListController = BehaviorSubject<Order>();
  Stream<Order> get order => _orderListController.stream;

  void _findOrder(String id) async {
    if (id == null) {
      return _createOrder();
    }
    FindOrderResponse response = await service.findOrder(id: id);
    _orderListController.add(response.order);
  }

  void _createOrder() async {
    print('creating order...');
    CreateOrderResponse response = await service.createOrder(
        email: "eamil", foreman: "foreman", name: "name", projectId: "cf510766-faf7-415e-a067-0c5ae5cb2ae8");
    _orderListController.add(response.order);
  }

  @override
  void dispose() {
    print('dispose hit');
    _orderListController.close();
  }
}

// Fetch order in didChangeDeps (currentOrderId sink)
// Handle create order inside of bloc if fetch id is null
// Sink response into order stream
// Stream order
