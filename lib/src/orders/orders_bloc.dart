import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';

class OrdersBloc extends BlocBase {
  OrdersBloc({this.api});

  final SupplyApi api;

  Stream<List<OrderSummary>> get orderSummaries async* {
    yield await api.findProjectOrderDates(projectId: 'cf510766-faf7-415e-a067-0c5ae5cb2ae8');
  }

  @override
  void dispose() {
    // Close controllers here with close()
  }
}
