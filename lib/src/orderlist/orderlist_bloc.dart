import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';

class OrderListBloc extends BlocBase {
  OrderListBloc({this.api, this.id});

  final SupplyApi api;
  final String id;

  Stream<Order> get order async* {
    yield await api.findOrder(id: id);
  }

  @override
  void dispose() {
    // Close controllers here with close()
  }
}
