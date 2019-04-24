import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/service/supply.dart';

class OrdersBloc extends BlocBase {
  SupplyService supply = SupplyService();

  Stream<FindProjectOrderDatesResponse> get orderSummaries async* {
    yield await supply.findProjectOrderDates(projectId: 'cf510766-faf7-415e-a067-0c5ae5cb2ae8');
  }

  @override
  void dispose() {
    // Close controllers here with close()
  }
}
