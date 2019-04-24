import 'package:grpc/grpc.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/service_provider.dart';

// https://medium.com/meeve/startup-friendly-guide-to-securing-grpc-connections-using-traefik-cc383c0b9d55

class SupplyService extends ServiceBase {
  factory SupplyService() => _instance;

  SupplyService._internal() {
    _newSupplyClient();
  }

  static final SupplyService _instance = SupplyService._internal();
  static SupplyClient _client;

  void _newSupplyClient() {
    _client = SupplyClient(
      ClientChannel(
        "10.0.2.2", //  "192.168.0.104"
        port: 9090,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
    );
    // options: CallOptions(timeout: Duration(seconds: 5)));
  }

  Future<FindProjectOrderDatesResponse> findProjectOrderDates({String projectId}) async {
    try {
      FindProjectOrderDatesRequest request = FindProjectOrderDatesRequest()..projectId = projectId;
      return await _client.findProjectOrderDates(request);
    } catch (e) {
      _handleError(e);
      return null;
    }
  }

  Future<FindOrderResponse> findOrder({String id}) async {
    try {
      FindOrderRequest request = FindOrderRequest()..id = id;
      return await _client.findOrder(request);
    } catch (e) {
      _handleError(e);
      return e;
    }
  }

  // TODO
  // https://pub.dartlang.org/packages/connectivity
  void _handleError(e) {
    if (e is GrpcError && e.code == StatusCode.unavailable || e.code == StatusCode.deadlineExceeded) {
      _newSupplyClient();
    }
    print('Caught error: $e');
  }

  @override
  void dispose() async {
//    await _channel.shutdown();
  }
}
