import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

class OrderListBloc extends BlocBase {
  OrderListBloc({this.service, this.id});

  final SupplyService service;
  final String id;

  BehaviorSubject<List<Order>> _orderListController = BehaviorSubject<List<Order>>();

  Stream<FindOrderResponse> get order async* {
    yield await service.findOrder(id: id);
  }

  @override
  void dispose() {
    _orderListController.close();
  }
}
