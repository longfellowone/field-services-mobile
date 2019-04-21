import 'package:grpc/grpc.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';

class SupplyApi {
  SupplyApi() {
    _client = SupplyClient(ClientChannel("10.0.2.2",
        port: 9090, options: const ChannelOptions(credentials: ChannelCredentials.insecure())));
  }

  static SupplyClient _client;

  Future<List<OrderSummary>> findProjectOrderDates({String projectId}) async {
    try {
      var response = await _client.findProjectOrderDates(
        FindProjectOrderDatesRequest()..projectId = projectId,
      );
      return response.orders;
    } catch (e) {
      print('Caught error: $e');
      return null;
    }
  }

  Future<Order> findOrder({String id}) async {
    try {
      var response = await _client.findOrder(
        FindOrderRequest()..id = id,
      );
      return response.order;
    } catch (e) {
      print('Caught error: $e');
      return null;
    }
  }

//  await channel.shutdown();
}
