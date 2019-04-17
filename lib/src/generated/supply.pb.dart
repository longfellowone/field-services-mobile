///
//  Generated code. Do not modify.
//  source: supply.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class CreateOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'projectId')
    ..hasRequiredFields = false
  ;

  CreateOrderRequest() : super();
  CreateOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateOrderRequest clone() => CreateOrderRequest()..mergeFromMessage(this);
  CreateOrderRequest copyWith(void Function(CreateOrderRequest) updates) => super.copyWith((message) => updates(message as CreateOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateOrderRequest create() => CreateOrderRequest();
  CreateOrderRequest createEmptyInstance() => create();
  static $pb.PbList<CreateOrderRequest> createRepeated() => $pb.PbList<CreateOrderRequest>();
  static CreateOrderRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateOrderRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get projectId => $_getS(1, '');
  set projectId($core.String v) { $_setString(1, v); }
  $core.bool hasProjectId() => $_has(1);
  void clearProjectId() => clearField(2);
}

class CreateOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateOrderResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  CreateOrderResponse() : super();
  CreateOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateOrderResponse clone() => CreateOrderResponse()..mergeFromMessage(this);
  CreateOrderResponse copyWith(void Function(CreateOrderResponse) updates) => super.copyWith((message) => updates(message as CreateOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateOrderResponse create() => CreateOrderResponse();
  CreateOrderResponse createEmptyInstance() => create();
  static $pb.PbList<CreateOrderResponse> createRepeated() => $pb.PbList<CreateOrderResponse>();
  static CreateOrderResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateOrderResponse _defaultInstance;
}

class AddOrderItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddOrderItemRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'productId')
    ..aOS(3, 'name')
    ..aOS(4, 'uom')
    ..hasRequiredFields = false
  ;

  AddOrderItemRequest() : super();
  AddOrderItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AddOrderItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AddOrderItemRequest clone() => AddOrderItemRequest()..mergeFromMessage(this);
  AddOrderItemRequest copyWith(void Function(AddOrderItemRequest) updates) => super.copyWith((message) => updates(message as AddOrderItemRequest));
  $pb.BuilderInfo get info_ => _i;
  static AddOrderItemRequest create() => AddOrderItemRequest();
  AddOrderItemRequest createEmptyInstance() => create();
  static $pb.PbList<AddOrderItemRequest> createRepeated() => $pb.PbList<AddOrderItemRequest>();
  static AddOrderItemRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AddOrderItemRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get productId => $_getS(1, '');
  set productId($core.String v) { $_setString(1, v); }
  $core.bool hasProductId() => $_has(1);
  void clearProductId() => clearField(2);

  $core.String get name => $_getS(2, '');
  set name($core.String v) { $_setString(2, v); }
  $core.bool hasName() => $_has(2);
  void clearName() => clearField(3);

  $core.String get uom => $_getS(3, '');
  set uom($core.String v) { $_setString(3, v); }
  $core.bool hasUom() => $_has(3);
  void clearUom() => clearField(4);
}

class AddOrderItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddOrderItemResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  AddOrderItemResponse() : super();
  AddOrderItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AddOrderItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AddOrderItemResponse clone() => AddOrderItemResponse()..mergeFromMessage(this);
  AddOrderItemResponse copyWith(void Function(AddOrderItemResponse) updates) => super.copyWith((message) => updates(message as AddOrderItemResponse));
  $pb.BuilderInfo get info_ => _i;
  static AddOrderItemResponse create() => AddOrderItemResponse();
  AddOrderItemResponse createEmptyInstance() => create();
  static $pb.PbList<AddOrderItemResponse> createRepeated() => $pb.PbList<AddOrderItemResponse>();
  static AddOrderItemResponse getDefault() => _defaultInstance ??= create()..freeze();
  static AddOrderItemResponse _defaultInstance;
}

class RemoveOrderItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RemoveOrderItemRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'productId')
    ..hasRequiredFields = false
  ;

  RemoveOrderItemRequest() : super();
  RemoveOrderItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RemoveOrderItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RemoveOrderItemRequest clone() => RemoveOrderItemRequest()..mergeFromMessage(this);
  RemoveOrderItemRequest copyWith(void Function(RemoveOrderItemRequest) updates) => super.copyWith((message) => updates(message as RemoveOrderItemRequest));
  $pb.BuilderInfo get info_ => _i;
  static RemoveOrderItemRequest create() => RemoveOrderItemRequest();
  RemoveOrderItemRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveOrderItemRequest> createRepeated() => $pb.PbList<RemoveOrderItemRequest>();
  static RemoveOrderItemRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RemoveOrderItemRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get productId => $_getS(1, '');
  set productId($core.String v) { $_setString(1, v); }
  $core.bool hasProductId() => $_has(1);
  void clearProductId() => clearField(2);
}

class RemoveOrderItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RemoveOrderItemResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  RemoveOrderItemResponse() : super();
  RemoveOrderItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RemoveOrderItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RemoveOrderItemResponse clone() => RemoveOrderItemResponse()..mergeFromMessage(this);
  RemoveOrderItemResponse copyWith(void Function(RemoveOrderItemResponse) updates) => super.copyWith((message) => updates(message as RemoveOrderItemResponse));
  $pb.BuilderInfo get info_ => _i;
  static RemoveOrderItemResponse create() => RemoveOrderItemResponse();
  RemoveOrderItemResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveOrderItemResponse> createRepeated() => $pb.PbList<RemoveOrderItemResponse>();
  static RemoveOrderItemResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RemoveOrderItemResponse _defaultInstance;
}

class ModifyRequestedQuantityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModifyRequestedQuantityRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'productId')
    ..a<$core.int>(3, 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ModifyRequestedQuantityRequest() : super();
  ModifyRequestedQuantityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ModifyRequestedQuantityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ModifyRequestedQuantityRequest clone() => ModifyRequestedQuantityRequest()..mergeFromMessage(this);
  ModifyRequestedQuantityRequest copyWith(void Function(ModifyRequestedQuantityRequest) updates) => super.copyWith((message) => updates(message as ModifyRequestedQuantityRequest));
  $pb.BuilderInfo get info_ => _i;
  static ModifyRequestedQuantityRequest create() => ModifyRequestedQuantityRequest();
  ModifyRequestedQuantityRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyRequestedQuantityRequest> createRepeated() => $pb.PbList<ModifyRequestedQuantityRequest>();
  static ModifyRequestedQuantityRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ModifyRequestedQuantityRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get productId => $_getS(1, '');
  set productId($core.String v) { $_setString(1, v); }
  $core.bool hasProductId() => $_has(1);
  void clearProductId() => clearField(2);

  $core.int get quantity => $_get(2, 0);
  set quantity($core.int v) { $_setUnsignedInt32(2, v); }
  $core.bool hasQuantity() => $_has(2);
  void clearQuantity() => clearField(3);
}

class ModifyRequestedQuantityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModifyRequestedQuantityResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  ModifyRequestedQuantityResponse() : super();
  ModifyRequestedQuantityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ModifyRequestedQuantityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ModifyRequestedQuantityResponse clone() => ModifyRequestedQuantityResponse()..mergeFromMessage(this);
  ModifyRequestedQuantityResponse copyWith(void Function(ModifyRequestedQuantityResponse) updates) => super.copyWith((message) => updates(message as ModifyRequestedQuantityResponse));
  $pb.BuilderInfo get info_ => _i;
  static ModifyRequestedQuantityResponse create() => ModifyRequestedQuantityResponse();
  ModifyRequestedQuantityResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyRequestedQuantityResponse> createRepeated() => $pb.PbList<ModifyRequestedQuantityResponse>();
  static ModifyRequestedQuantityResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ModifyRequestedQuantityResponse _defaultInstance;
}

class SendOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  SendOrderRequest() : super();
  SendOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SendOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SendOrderRequest clone() => SendOrderRequest()..mergeFromMessage(this);
  SendOrderRequest copyWith(void Function(SendOrderRequest) updates) => super.copyWith((message) => updates(message as SendOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  static SendOrderRequest create() => SendOrderRequest();
  SendOrderRequest createEmptyInstance() => create();
  static $pb.PbList<SendOrderRequest> createRepeated() => $pb.PbList<SendOrderRequest>();
  static SendOrderRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SendOrderRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class SendOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendOrderResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  SendOrderResponse() : super();
  SendOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SendOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SendOrderResponse clone() => SendOrderResponse()..mergeFromMessage(this);
  SendOrderResponse copyWith(void Function(SendOrderResponse) updates) => super.copyWith((message) => updates(message as SendOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  static SendOrderResponse create() => SendOrderResponse();
  SendOrderResponse createEmptyInstance() => create();
  static $pb.PbList<SendOrderResponse> createRepeated() => $pb.PbList<SendOrderResponse>();
  static SendOrderResponse getDefault() => _defaultInstance ??= create()..freeze();
  static SendOrderResponse _defaultInstance;
}

class ReceiveOrderItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReceiveOrderItemRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'productId')
    ..a<$core.int>(3, 'quantity', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReceiveOrderItemRequest() : super();
  ReceiveOrderItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReceiveOrderItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReceiveOrderItemRequest clone() => ReceiveOrderItemRequest()..mergeFromMessage(this);
  ReceiveOrderItemRequest copyWith(void Function(ReceiveOrderItemRequest) updates) => super.copyWith((message) => updates(message as ReceiveOrderItemRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReceiveOrderItemRequest create() => ReceiveOrderItemRequest();
  ReceiveOrderItemRequest createEmptyInstance() => create();
  static $pb.PbList<ReceiveOrderItemRequest> createRepeated() => $pb.PbList<ReceiveOrderItemRequest>();
  static ReceiveOrderItemRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReceiveOrderItemRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get productId => $_getS(1, '');
  set productId($core.String v) { $_setString(1, v); }
  $core.bool hasProductId() => $_has(1);
  void clearProductId() => clearField(2);

  $core.int get quantity => $_get(2, 0);
  set quantity($core.int v) { $_setUnsignedInt32(2, v); }
  $core.bool hasQuantity() => $_has(2);
  void clearQuantity() => clearField(3);
}

class ReceiveOrderItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReceiveOrderItemResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  ReceiveOrderItemResponse() : super();
  ReceiveOrderItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReceiveOrderItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReceiveOrderItemResponse clone() => ReceiveOrderItemResponse()..mergeFromMessage(this);
  ReceiveOrderItemResponse copyWith(void Function(ReceiveOrderItemResponse) updates) => super.copyWith((message) => updates(message as ReceiveOrderItemResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReceiveOrderItemResponse create() => ReceiveOrderItemResponse();
  ReceiveOrderItemResponse createEmptyInstance() => create();
  static $pb.PbList<ReceiveOrderItemResponse> createRepeated() => $pb.PbList<ReceiveOrderItemResponse>();
  static ReceiveOrderItemResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReceiveOrderItemResponse _defaultInstance;
}

class FindProjectOrderDatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindProjectOrderDatesRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'projectId')
    ..hasRequiredFields = false
  ;

  FindProjectOrderDatesRequest() : super();
  FindProjectOrderDatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindProjectOrderDatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindProjectOrderDatesRequest clone() => FindProjectOrderDatesRequest()..mergeFromMessage(this);
  FindProjectOrderDatesRequest copyWith(void Function(FindProjectOrderDatesRequest) updates) => super.copyWith((message) => updates(message as FindProjectOrderDatesRequest));
  $pb.BuilderInfo get info_ => _i;
  static FindProjectOrderDatesRequest create() => FindProjectOrderDatesRequest();
  FindProjectOrderDatesRequest createEmptyInstance() => create();
  static $pb.PbList<FindProjectOrderDatesRequest> createRepeated() => $pb.PbList<FindProjectOrderDatesRequest>();
  static FindProjectOrderDatesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static FindProjectOrderDatesRequest _defaultInstance;

  $core.String get projectId => $_getS(0, '');
  set projectId($core.String v) { $_setString(0, v); }
  $core.bool hasProjectId() => $_has(0);
  void clearProjectId() => clearField(1);
}

class FindProjectOrderDatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindProjectOrderDatesResponse', package: const $pb.PackageName('server'))
    ..pc<Order>(1, 'orders', $pb.PbFieldType.PM,Order.create)
    ..hasRequiredFields = false
  ;

  FindProjectOrderDatesResponse() : super();
  FindProjectOrderDatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindProjectOrderDatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindProjectOrderDatesResponse clone() => FindProjectOrderDatesResponse()..mergeFromMessage(this);
  FindProjectOrderDatesResponse copyWith(void Function(FindProjectOrderDatesResponse) updates) => super.copyWith((message) => updates(message as FindProjectOrderDatesResponse));
  $pb.BuilderInfo get info_ => _i;
  static FindProjectOrderDatesResponse create() => FindProjectOrderDatesResponse();
  FindProjectOrderDatesResponse createEmptyInstance() => create();
  static $pb.PbList<FindProjectOrderDatesResponse> createRepeated() => $pb.PbList<FindProjectOrderDatesResponse>();
  static FindProjectOrderDatesResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FindProjectOrderDatesResponse _defaultInstance;

  $core.List<Order> get orders => $_getList(0);
}

class Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Order', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aInt64(2, 'date')
    ..aOS(3, 'status')
    ..hasRequiredFields = false
  ;

  Order() : super();
  Order.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Order.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Order clone() => Order()..mergeFromMessage(this);
  Order copyWith(void Function(Order) updates) => super.copyWith((message) => updates(message as Order));
  $pb.BuilderInfo get info_ => _i;
  static Order create() => Order();
  Order createEmptyInstance() => create();
  static $pb.PbList<Order> createRepeated() => $pb.PbList<Order>();
  static Order getDefault() => _defaultInstance ??= create()..freeze();
  static Order _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  Int64 get date => $_getI64(1);
  set date(Int64 v) { $_setInt64(1, v); }
  $core.bool hasDate() => $_has(1);
  void clearDate() => clearField(2);

  $core.String get status => $_getS(2, '');
  set status($core.String v) { $_setString(2, v); }
  $core.bool hasStatus() => $_has(2);
  void clearStatus() => clearField(3);
}

class FindOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  FindOrderRequest() : super();
  FindOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindOrderRequest clone() => FindOrderRequest()..mergeFromMessage(this);
  FindOrderRequest copyWith(void Function(FindOrderRequest) updates) => super.copyWith((message) => updates(message as FindOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  static FindOrderRequest create() => FindOrderRequest();
  FindOrderRequest createEmptyInstance() => create();
  static $pb.PbList<FindOrderRequest> createRepeated() => $pb.PbList<FindOrderRequest>();
  static FindOrderRequest getDefault() => _defaultInstance ??= create()..freeze();
  static FindOrderRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class FindOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindOrderResponse', package: const $pb.PackageName('server'))
    ..aInt64(1, 'date')
    ..aOS(2, 'status')
    ..pc<Item>(3, 'items', $pb.PbFieldType.PM,Item.create)
    ..hasRequiredFields = false
  ;

  FindOrderResponse() : super();
  FindOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindOrderResponse clone() => FindOrderResponse()..mergeFromMessage(this);
  FindOrderResponse copyWith(void Function(FindOrderResponse) updates) => super.copyWith((message) => updates(message as FindOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  static FindOrderResponse create() => FindOrderResponse();
  FindOrderResponse createEmptyInstance() => create();
  static $pb.PbList<FindOrderResponse> createRepeated() => $pb.PbList<FindOrderResponse>();
  static FindOrderResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FindOrderResponse _defaultInstance;

  Int64 get date => $_getI64(0);
  set date(Int64 v) { $_setInt64(0, v); }
  $core.bool hasDate() => $_has(0);
  void clearDate() => clearField(1);

  $core.String get status => $_getS(1, '');
  set status($core.String v) { $_setString(1, v); }
  $core.bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);

  $core.List<Item> get items => $_getList(2);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Item', package: const $pb.PackageName('server'))
    ..aOS(1, 'productId')
    ..aOS(2, 'name')
    ..aOS(3, 'uom')
    ..a<$core.int>(4, 'quantityRequested', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'quantityReceived', $pb.PbFieldType.OU3)
    ..aOS(6, 'itemStatus')
    ..hasRequiredFields = false
  ;

  Item() : super();
  Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Item clone() => Item()..mergeFromMessage(this);
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item));
  $pb.BuilderInfo get info_ => _i;
  static Item create() => Item();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  static Item getDefault() => _defaultInstance ??= create()..freeze();
  static Item _defaultInstance;

  $core.String get productId => $_getS(0, '');
  set productId($core.String v) { $_setString(0, v); }
  $core.bool hasProductId() => $_has(0);
  void clearProductId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get uom => $_getS(2, '');
  set uom($core.String v) { $_setString(2, v); }
  $core.bool hasUom() => $_has(2);
  void clearUom() => clearField(3);

  $core.int get quantityRequested => $_get(3, 0);
  set quantityRequested($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasQuantityRequested() => $_has(3);
  void clearQuantityRequested() => clearField(4);

  $core.int get quantityReceived => $_get(4, 0);
  set quantityReceived($core.int v) { $_setUnsignedInt32(4, v); }
  $core.bool hasQuantityReceived() => $_has(4);
  void clearQuantityReceived() => clearField(5);

  $core.String get itemStatus => $_getS(5, '');
  set itemStatus($core.String v) { $_setString(5, v); }
  $core.bool hasItemStatus() => $_has(5);
  void clearItemStatus() => clearField(6);
}

class ProductSearchRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProductSearchRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'name')
    ..hasRequiredFields = false
  ;

  ProductSearchRequest() : super();
  ProductSearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProductSearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProductSearchRequest clone() => ProductSearchRequest()..mergeFromMessage(this);
  ProductSearchRequest copyWith(void Function(ProductSearchRequest) updates) => super.copyWith((message) => updates(message as ProductSearchRequest));
  $pb.BuilderInfo get info_ => _i;
  static ProductSearchRequest create() => ProductSearchRequest();
  ProductSearchRequest createEmptyInstance() => create();
  static $pb.PbList<ProductSearchRequest> createRepeated() => $pb.PbList<ProductSearchRequest>();
  static ProductSearchRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ProductSearchRequest _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);
}

class ProductSearchResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProductSearchResponse', package: const $pb.PackageName('server'))
    ..pc<Result>(5, 'results', $pb.PbFieldType.PM,Result.create)
    ..hasRequiredFields = false
  ;

  ProductSearchResponse() : super();
  ProductSearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProductSearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProductSearchResponse clone() => ProductSearchResponse()..mergeFromMessage(this);
  ProductSearchResponse copyWith(void Function(ProductSearchResponse) updates) => super.copyWith((message) => updates(message as ProductSearchResponse));
  $pb.BuilderInfo get info_ => _i;
  static ProductSearchResponse create() => ProductSearchResponse();
  ProductSearchResponse createEmptyInstance() => create();
  static $pb.PbList<ProductSearchResponse> createRepeated() => $pb.PbList<ProductSearchResponse>();
  static ProductSearchResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ProductSearchResponse _defaultInstance;

  $core.List<Result> get results => $_getList(0);
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Result', package: const $pb.PackageName('server'))
    ..aOS(1, 'productUuid')
    ..aOS(2, 'category')
    ..aOS(3, 'name')
    ..aOS(4, 'uom')
    ..pc<Index>(5, 'indexes', $pb.PbFieldType.PM,Index.create)
    ..hasRequiredFields = false
  ;

  Result() : super();
  Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Result clone() => Result()..mergeFromMessage(this);
  Result copyWith(void Function(Result) updates) => super.copyWith((message) => updates(message as Result));
  $pb.BuilderInfo get info_ => _i;
  static Result create() => Result();
  Result createEmptyInstance() => create();
  static $pb.PbList<Result> createRepeated() => $pb.PbList<Result>();
  static Result getDefault() => _defaultInstance ??= create()..freeze();
  static Result _defaultInstance;

  $core.String get productUuid => $_getS(0, '');
  set productUuid($core.String v) { $_setString(0, v); }
  $core.bool hasProductUuid() => $_has(0);
  void clearProductUuid() => clearField(1);

  $core.String get category => $_getS(1, '');
  set category($core.String v) { $_setString(1, v); }
  $core.bool hasCategory() => $_has(1);
  void clearCategory() => clearField(2);

  $core.String get name => $_getS(2, '');
  set name($core.String v) { $_setString(2, v); }
  $core.bool hasName() => $_has(2);
  void clearName() => clearField(3);

  $core.String get uom => $_getS(3, '');
  set uom($core.String v) { $_setString(3, v); }
  $core.bool hasUom() => $_has(3);
  void clearUom() => clearField(4);

  $core.List<Index> get indexes => $_getList(4);
}

class Index extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Index', package: const $pb.PackageName('server'))
    ..a<$core.int>(1, 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Index() : super();
  Index.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Index.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Index clone() => Index()..mergeFromMessage(this);
  Index copyWith(void Function(Index) updates) => super.copyWith((message) => updates(message as Index));
  $pb.BuilderInfo get info_ => _i;
  static Index create() => Index();
  Index createEmptyInstance() => create();
  static $pb.PbList<Index> createRepeated() => $pb.PbList<Index>();
  static Index getDefault() => _defaultInstance ??= create()..freeze();
  static Index _defaultInstance;

  $core.int get index => $_get(0, 0);
  set index($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasIndex() => $_has(0);
  void clearIndex() => clearField(1);
}

