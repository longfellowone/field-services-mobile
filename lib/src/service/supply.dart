import 'package:grpc/grpc.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';

class SupplyService {
  factory SupplyService() => _instance;

  SupplyService._internal() {
    _newSupplyClient();
  }

  static final SupplyService _instance = SupplyService._internal();

  static SupplyClient _client;
  static ClientChannel _channel;

  void _newSupplyClient() {
    _channel = ClientChannel(
      "10.0.2.2", //  "192.168.0.104"
      port: 9090,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _client = SupplyClient(_channel);
    // options: CallOptions(timeout: Duration(seconds: 5)));
  }

  Future<FindProjectOrderDatesResponse> findProjectOrderDates({String projectId}) async {
    try {
      return await _client.findProjectOrderDates(FindProjectOrderDatesRequest()..projectId = projectId);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<FindOrderResponse> findOrder({String id}) async {
    try {
      return await _client.findOrder(FindOrderRequest()..id = id);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }
}

// https://medium.com/meeve/startup-friendly-guide-to-securing-grpc-connections-using-traefik-cc383c0b9d55
// channel.shutdown();
/*
// https://pub.dartlang.org/packages/connectivity
void _handleError(e) {
  if (e is GrpcError && e.code == StatusCode.unavailable || e.code == StatusCode.deadlineExceeded) {
    _newSupplyClient();
  }
  print('Caught error: $e');
}
*/
