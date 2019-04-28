import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

// Reduce down to one bloc?
class OrderListBloc extends BlocBase {
  OrderListBloc({this.service, this.id}) {
    _findOrder(id: id);
    _orderListController.listen((order) => _orderListItemController.add(order.items));
  }

  final SupplyService service;
  final String id;

  BehaviorSubject<Order> _orderListController = BehaviorSubject<Order>();
  Observable<Order> get order => _orderListController;

  BehaviorSubject<List<Item>> _orderListItemController = BehaviorSubject<List<Item>>();
  Observable<List<Item>> get orderItems =>
      _orderListItemController.stream.map((items) => items.where((item) => !item.deleted).toList());

  void _findOrder({String id}) async {
    try {
      FindOrderResponse response = await service.findOrder(id: id);
      _orderListController.add(response.order);
    } catch (e) {}
  }

  void addOrderItem({Product product}) async {
    try {
      AddOrderItemResponse response = await service.addOrderItem(orderId: id, product: product);
      _orderListController.add(response.order);
    } catch (e) {}
  }

  void removeOrderItem({Item item}) async {
    try {
      RemoveOrderItemResponse response = await service.removeOrderItem(orderId: id, item: item);
      _orderListController.add(response.order);
    } catch (e) {}
  }

  void modifyRequestedQuantity({Item item, int quantity}) async {
    if (item.quantityRequested == null) return;
    try {
      ModifyRequestedQuantityResponse response =
          await service.modifyRequestedQuantity(orderId: id, item: item, quantity: quantity);
      _orderListController.add(response.order);
    } catch (e) {}
  }

  @override
  void dispose() {
    _orderListController.close();
    _orderListItemController.close();
  }
}
