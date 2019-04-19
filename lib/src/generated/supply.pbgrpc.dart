///
//  Generated code. Do not modify.
//  source: supply.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'supply.pb.dart';
export 'supply.pb.dart';

class SupplyClient extends $grpc.Client {
  static final _$createOrder =
      $grpc.ClientMethod<CreateOrderRequest, CreateOrderResponse>(
          '/server.Supply/CreateOrder',
          (CreateOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              CreateOrderResponse.fromBuffer(value));
  static final _$sendOrder =
      $grpc.ClientMethod<SendOrderRequest, SendOrderResponse>(
          '/server.Supply/SendOrder',
          (SendOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => SendOrderResponse.fromBuffer(value));
  static final _$addOrderItem =
      $grpc.ClientMethod<AddOrderItemRequest, AddOrderItemResponse>(
          '/server.Supply/AddOrderItem',
          (AddOrderItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              AddOrderItemResponse.fromBuffer(value));
  static final _$removeOrderItem =
      $grpc.ClientMethod<RemoveOrderItemRequest, RemoveOrderItemResponse>(
          '/server.Supply/RemoveOrderItem',
          (RemoveOrderItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              RemoveOrderItemResponse.fromBuffer(value));
  static final _$receiveOrderItem =
      $grpc.ClientMethod<ReceiveOrderItemRequest, ReceiveOrderItemResponse>(
          '/server.Supply/ReceiveOrderItem',
          (ReceiveOrderItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              ReceiveOrderItemResponse.fromBuffer(value));
  static final _$modifyRequestedQuantity = $grpc.ClientMethod<
          ModifyRequestedQuantityRequest, ModifyRequestedQuantityResponse>(
      '/server.Supply/ModifyRequestedQuantity',
      (ModifyRequestedQuantityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          ModifyRequestedQuantityResponse.fromBuffer(value));
  static final _$findOrder =
      $grpc.ClientMethod<FindOrderRequest, FindOrderResponse>(
          '/server.Supply/FindOrder',
          (FindOrderRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => FindOrderResponse.fromBuffer(value));
  static final _$findProjectOrderDates = $grpc.ClientMethod<
          FindProjectOrderDatesRequest, FindProjectOrderDatesResponse>(
      '/server.Supply/FindProjectOrderDates',
      (FindProjectOrderDatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          FindProjectOrderDatesResponse.fromBuffer(value));
  static final _$productSearch =
      $grpc.ClientMethod<ProductSearchRequest, ProductSearchResponse>(
          '/server.Supply/ProductSearch',
          (ProductSearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              ProductSearchResponse.fromBuffer(value));
  static final _$createProject =
      $grpc.ClientMethod<CreateProjectRequest, CreateProjectResponse>(
          '/server.Supply/CreateProject',
          (CreateProjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              CreateProjectResponse.fromBuffer(value));
  static final _$closeProject =
      $grpc.ClientMethod<CloseProjectRequest, CloseProjectResponse>(
          '/server.Supply/CloseProject',
          (CloseProjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              CloseProjectResponse.fromBuffer(value));
  static final _$findProjects =
      $grpc.ClientMethod<FindProjectsRequest, FindProjectsResponse>(
          '/server.Supply/FindProjects',
          (FindProjectsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              FindProjectsResponse.fromBuffer(value));

  SupplyClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<CreateOrderResponse> createOrder(
      CreateOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<SendOrderResponse> sendOrder(SendOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<AddOrderItemResponse> addOrderItem(
      AddOrderItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addOrderItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<RemoveOrderItemResponse> removeOrderItem(
      RemoveOrderItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$removeOrderItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ReceiveOrderItemResponse> receiveOrderItem(
      ReceiveOrderItemRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$receiveOrderItem, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ModifyRequestedQuantityResponse> modifyRequestedQuantity(
      ModifyRequestedQuantityRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$modifyRequestedQuantity, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<FindOrderResponse> findOrder(FindOrderRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$findOrder, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<FindProjectOrderDatesResponse> findProjectOrderDates(
      FindProjectOrderDatesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$findProjectOrderDates, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<ProductSearchResponse> productSearch(
      ProductSearchRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$productSearch, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CreateProjectResponse> createProject(
      CreateProjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createProject, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<CloseProjectResponse> closeProject(
      CloseProjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$closeProject, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<FindProjectsResponse> findProjects(
      FindProjectsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$findProjects, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SupplyServiceBase extends $grpc.Service {
  $core.String get $name => 'server.Supply';

  SupplyServiceBase() {
    $addMethod($grpc.ServiceMethod<CreateOrderRequest, CreateOrderResponse>(
        'CreateOrder',
        createOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => CreateOrderRequest.fromBuffer(value),
        (CreateOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<SendOrderRequest, SendOrderResponse>(
        'SendOrder',
        sendOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => SendOrderRequest.fromBuffer(value),
        (SendOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<AddOrderItemRequest, AddOrderItemResponse>(
        'AddOrderItem',
        addOrderItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => AddOrderItemRequest.fromBuffer(value),
        (AddOrderItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<RemoveOrderItemRequest, RemoveOrderItemResponse>(
            'RemoveOrderItem',
            removeOrderItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                RemoveOrderItemRequest.fromBuffer(value),
            (RemoveOrderItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<ReceiveOrderItemRequest, ReceiveOrderItemResponse>(
            'ReceiveOrderItem',
            receiveOrderItem_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                ReceiveOrderItemRequest.fromBuffer(value),
            (ReceiveOrderItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ModifyRequestedQuantityRequest,
            ModifyRequestedQuantityResponse>(
        'ModifyRequestedQuantity',
        modifyRequestedQuantity_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            ModifyRequestedQuantityRequest.fromBuffer(value),
        (ModifyRequestedQuantityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<FindOrderRequest, FindOrderResponse>(
        'FindOrder',
        findOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => FindOrderRequest.fromBuffer(value),
        (FindOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<FindProjectOrderDatesRequest,
            FindProjectOrderDatesResponse>(
        'FindProjectOrderDates',
        findProjectOrderDates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            FindProjectOrderDatesRequest.fromBuffer(value),
        (FindProjectOrderDatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<ProductSearchRequest, ProductSearchResponse>(
        'ProductSearch',
        productSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => ProductSearchRequest.fromBuffer(value),
        (ProductSearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<CreateProjectRequest, CreateProjectResponse>(
        'CreateProject',
        createProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => CreateProjectRequest.fromBuffer(value),
        (CreateProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<CloseProjectRequest, CloseProjectResponse>(
        'CloseProject',
        closeProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => CloseProjectRequest.fromBuffer(value),
        (CloseProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<FindProjectsRequest, FindProjectsResponse>(
        'FindProjects',
        findProjects_Pre,
        false,
        false,
        ($core.List<$core.int> value) => FindProjectsRequest.fromBuffer(value),
        (FindProjectsResponse value) => value.writeToBuffer()));
  }

  $async.Future<CreateOrderResponse> createOrder_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createOrder(call, await request);
  }

  $async.Future<SendOrderResponse> sendOrder_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return sendOrder(call, await request);
  }

  $async.Future<AddOrderItemResponse> addOrderItem_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return addOrderItem(call, await request);
  }

  $async.Future<RemoveOrderItemResponse> removeOrderItem_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return removeOrderItem(call, await request);
  }

  $async.Future<ReceiveOrderItemResponse> receiveOrderItem_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return receiveOrderItem(call, await request);
  }

  $async.Future<ModifyRequestedQuantityResponse> modifyRequestedQuantity_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return modifyRequestedQuantity(call, await request);
  }

  $async.Future<FindOrderResponse> findOrder_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return findOrder(call, await request);
  }

  $async.Future<FindProjectOrderDatesResponse> findProjectOrderDates_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return findProjectOrderDates(call, await request);
  }

  $async.Future<ProductSearchResponse> productSearch_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return productSearch(call, await request);
  }

  $async.Future<CreateProjectResponse> createProject_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return createProject(call, await request);
  }

  $async.Future<CloseProjectResponse> closeProject_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return closeProject(call, await request);
  }

  $async.Future<FindProjectsResponse> findProjects_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return findProjects(call, await request);
  }

  $async.Future<CreateOrderResponse> createOrder(
      $grpc.ServiceCall call, CreateOrderRequest request);
  $async.Future<SendOrderResponse> sendOrder(
      $grpc.ServiceCall call, SendOrderRequest request);
  $async.Future<AddOrderItemResponse> addOrderItem(
      $grpc.ServiceCall call, AddOrderItemRequest request);
  $async.Future<RemoveOrderItemResponse> removeOrderItem(
      $grpc.ServiceCall call, RemoveOrderItemRequest request);
  $async.Future<ReceiveOrderItemResponse> receiveOrderItem(
      $grpc.ServiceCall call, ReceiveOrderItemRequest request);
  $async.Future<ModifyRequestedQuantityResponse> modifyRequestedQuantity(
      $grpc.ServiceCall call, ModifyRequestedQuantityRequest request);
  $async.Future<FindOrderResponse> findOrder(
      $grpc.ServiceCall call, FindOrderRequest request);
  $async.Future<FindProjectOrderDatesResponse> findProjectOrderDates(
      $grpc.ServiceCall call, FindProjectOrderDatesRequest request);
  $async.Future<ProductSearchResponse> productSearch(
      $grpc.ServiceCall call, ProductSearchRequest request);
  $async.Future<CreateProjectResponse> createProject(
      $grpc.ServiceCall call, CreateProjectRequest request);
  $async.Future<CloseProjectResponse> closeProject(
      $grpc.ServiceCall call, CloseProjectRequest request);
  $async.Future<FindProjectsResponse> findProjects(
      $grpc.ServiceCall call, FindProjectsRequest request);
}
