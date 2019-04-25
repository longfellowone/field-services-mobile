import 'dart:async';

import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

// Reduce down to one bloc?
class OrderListBloc extends BlocBase {
  OrderListBloc({this.id}) {
    _findOrder(id);
  }

  final String id;

  SupplyService supply = SupplyService();

  BehaviorSubject<Order> _orderListController = BehaviorSubject<Order>();
  Stream<Order> get order => _orderListController.stream;

  // TODO: Move into service
  void _findOrder(String id) async {
    if (id == null || id == "") {
      return _createOrder();
    }
    FindOrderResponse response = await supply.findOrder(id: id);
    _orderListController.add(response.order);
  }

  void _createOrder() async {
    print('creating order...');
  }

//  Stream<FindOrderResponse> get order async* {
//    yield await supply.findOrder(id: id);
//  }

  @override
  void dispose() {
    _orderListController.close();
  }
}

// Fetch order in didChangeDeps (currentOrderId sink)
// Handle create order inside of bloc if fetch id is null
// Sink response into order stream
// Stream order
