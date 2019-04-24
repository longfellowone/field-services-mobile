import 'package:grpc/grpc.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/service_provider.dart';

// https://medium.com/meeve/startup-friendly-guide-to-securing-grpc-connections-using-traefik-cc383c0b9d55

class SupplyService extends ServiceBase {
  SupplyService() {
    _client = SupplyClient(
      ClientChannel(
        "10.0.2.2",
        port: 9090,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(seconds: 10),
        ),
      ),
    );
//    _client = SupplyClient(
//      ClientChannel(
//        "192.168.0.104",
//        port: 9090,
//        options: const ChannelOptions(
//          credentials: ChannelCredentials.insecure(),
//        ),
//      ),
//    );
  }

  static SupplyClient _client;

  Future<FindProjectOrderDatesResponse> findProjectOrderDates({String projectId}) async {
    try {
      return await _client.findProjectOrderDates(FindProjectOrderDatesRequest()..projectId = projectId);
    } catch (e) {
      print('Caught error: $e');
      return null;
    }
  }

  Future<FindOrderResponse> findOrder({String id}) async {
    try {
      return await _client.findOrder(FindOrderRequest()..id = id);
    } catch (e) {
      print('Caught error: $e');
      return null;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //  await channel.shutdown();
  }
}
