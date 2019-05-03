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

  BehaviorSubject<List<OrderSummary>> _ordersController = BehaviorSubject<List<OrderSummary>>();
  Observable<List<OrderSummary>> get orderSummaries => _ordersController;

  void _findOrderSummaries({String projectId}) async {
    try {
      FindProjectOrderDatesResponse response = await service.findProjectOrderDates(projectId: projectId);

      _ordersController.add(response.orders);
    } catch (e) {}
  }

  void createOrder() async {
    try {
      // TODO
      CreateOrderResponse response = await service.createOrder(
          email: "mwright@plan-group.com",
          foreman: "Matt Wright",
          name: "Argyle Secondary School",
          projectId: "cf510766-faf7-415e-a067-0c5ae5cb2ae8");

      _ordersController.add(_ordersController.value..insert(0, response.order));
    } catch (e) {}
  }

  void deleteOrder({OrderSummary orderSummary, int index}) async {
    try {
      _ordersController.add(_ordersController.value..remove(orderSummary));

      await service.deleteOrder(orderId: orderSummary.id);
    } catch (e) {
      _ordersController.add(_ordersController.value..insert(index, orderSummary));
    }
  }

  @override
  void dispose() {
    _ordersController.close();
  }
}
