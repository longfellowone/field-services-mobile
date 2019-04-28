import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

class OrdersBloc extends BlocBase {
  OrdersBloc({this.service, this.projectId}) {
    _findOrderSummaries(projectId: projectId);
  }

  final SupplyService service;
  final String projectId;

  List<OrderSummary> _list = []; // hack?

  BehaviorSubject<List<OrderSummary>> _ordersController = BehaviorSubject<List<OrderSummary>>();
  Observable<List<OrderSummary>> get orderSummaries => _ordersController;

  void _findOrderSummaries({String projectId}) async {
    try {
      FindProjectOrderDatesResponse response = await service.findProjectOrderDates(projectId: projectId);

      _list.addAll(response.orders);
      _ordersController.add(_list);
    } catch (e) {}
  }

  void createOrder() async {
    try {
      CreateOrderResponse response = await service.createOrder(
          email: "eamil", foreman: "foreman", name: "name", projectId: "cf510766-faf7-415e-a067-0c5ae5cb2ae8");

      _list.insert(0, response.order);
      _ordersController.add(_list);
    } catch (e) {}
  }

  void deleteOrder({OrderSummary orderSummary, int index}) async {
    try {
      _list.remove(orderSummary);
      _ordersController.add(_list);

      await service.deleteOrder(orderId: orderSummary.id);
    } catch (e) {
      _list.insert(index, orderSummary);
      _ordersController.add(_list);
    }
  }

  @override
  void dispose() {
    _ordersController.close();
  }
}
