import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';

class OrderListBloc extends BlocBase {
  OrderListBloc({this.service, this.id});

  final SupplyService service;
  final String id;

  Stream<FindOrderResponse> get order async* {
    yield await service.findOrder(id: id);
  }

  @override
  void dispose() {
    // Close controllers here with close()
  }
}
