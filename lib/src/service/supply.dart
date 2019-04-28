import 'package:grpc/grpc.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/service_provider.dart';

class SupplyService extends ServiceBase {
  SupplyService() {
    _newSupplyClient();
  }

  static SupplyClient _client;
  static ClientChannel _channel;

  void _newSupplyClient() {
    _channel = ClientChannel(
//      "10.0.2.2",
      "192.168.0.104",
      port: 9090,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _client = SupplyClient(_channel); // options: CallOptions(timeout: Duration(seconds: 5)));
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

  Future<CreateOrderResponse> createOrder({String projectId, String name, String foreman, String email}) async {
    try {
      return await _client.createOrder(CreateOrderRequest()
        ..projectId = projectId
        ..name = name
        ..foreman = foreman
        ..email = email);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<DeleteOrderResponse> deleteOrder({String orderId}) async {
    try {
      return await _client.deleteOrder(DeleteOrderRequest()..orderId = orderId);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<AddOrderItemResponse> addOrderItem({String orderId, Product product}) async {
    try {
      return await _client.addOrderItem(AddOrderItemRequest()
        ..id = orderId
        ..productId = product.id
        ..name = product.name
        ..uom = product.uom);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<RemoveOrderItemResponse> removeOrderItem({String orderId, Item item}) async {
    try {
      return await _client.removeOrderItem(RemoveOrderItemRequest()
        ..id = orderId
        ..productId = item.product.id);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<ModifyRequestedQuantityResponse> modifyRequestedQuantity({String orderId, Item item, int quantity}) async {
    try {
      return await _client.modifyRequestedQuantity(ModifyRequestedQuantityRequest()
        ..id = orderId
        ..productId = item.product.id
        ..quantity = quantity);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<SendOrderResponse> sendOrder({String orderId, String comments}) async {
    try {
      return await _client.sendOrder(SendOrderRequest()
        ..id = orderId
        ..comments = comments);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  Future<ProductSearchResponse> search({String query}) async {
    try {
      return await _client.productSearch(ProductSearchRequest()..name = query);
    } catch (e) {
      print('Caught error: $e');
      return e;
    }
  }

  @override
  void dispose() {
    _channel.shutdown();
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
