///
//  Generated code. Do not modify.
//  source: supply.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(2, 'projectId')
    ..aOS(3, 'name')
    ..aOS(4, 'foreman')
    ..aOS(5, 'email')
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

  $core.String get projectId => $_getS(0, '');
  set projectId($core.String v) { $_setString(0, v); }
  $core.bool hasProjectId() => $_has(0);
  void clearProjectId() => clearField(2);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(3);

  $core.String get foreman => $_getS(2, '');
  set foreman($core.String v) { $_setString(2, v); }
  $core.bool hasForeman() => $_has(2);
  void clearForeman() => clearField(4);

  $core.String get email => $_getS(3, '');
  set email($core.String v) { $_setString(3, v); }
  $core.bool hasEmail() => $_has(3);
  void clearEmail() => clearField(5);
}

class CreateOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateOrderResponse', package: const $pb.PackageName('server'))
    ..a<OrderSummary>(1, 'order', $pb.PbFieldType.OM, OrderSummary.getDefault, OrderSummary.create)
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

  OrderSummary get order => $_getN(0);
  set order(OrderSummary v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
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
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
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
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
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
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
}

class SendOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'comments')
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

  $core.String get comments => $_getS(1, '');
  set comments($core.String v) { $_setString(1, v); }
  $core.bool hasComments() => $_has(1);
  void clearComments() => clearField(2);
}

class SendOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendOrderResponse', package: const $pb.PackageName('server'))
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
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
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
}

class Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Order', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..a<Project>(2, 'project', $pb.PbFieldType.OM, Project.getDefault, Project.create)
    ..pc<Item>(3, 'items', $pb.PbFieldType.PM,Item.create)
    ..a<$core.int>(4, 'date', $pb.PbFieldType.O3)
    ..aOS(5, 'status')
    ..aOS(6, 'comments')
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

  Project get project => $_getN(1);
  set project(Project v) { setField(2, v); }
  $core.bool hasProject() => $_has(1);
  void clearProject() => clearField(2);

  $core.List<Item> get items => $_getList(2);

  $core.int get date => $_get(3, 0);
  set date($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasDate() => $_has(3);
  void clearDate() => clearField(4);

  $core.String get status => $_getS(4, '');
  set status($core.String v) { $_setString(4, v); }
  $core.bool hasStatus() => $_has(4);
  void clearStatus() => clearField(5);

  $core.String get comments => $_getS(5, '');
  set comments($core.String v) { $_setString(5, v); }
  $core.bool hasComments() => $_has(5);
  void clearComments() => clearField(6);
}

class Project extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Project', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  Project() : super();
  Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Project clone() => Project()..mergeFromMessage(this);
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project));
  $pb.BuilderInfo get info_ => _i;
  static Project create() => Project();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  static Project getDefault() => _defaultInstance ??= create()..freeze();
  static Project _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Item', package: const $pb.PackageName('server'))
    ..a<Product>(1, 'product', $pb.PbFieldType.OM, Product.getDefault, Product.create)
    ..a<$core.int>(2, 'quantityRequested', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, 'quantityReceived', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'quantityRemaining', $pb.PbFieldType.OU3)
    ..aOS(5, 'itemStatus')
    ..aOB(6, 'deleted')
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

  Product get product => $_getN(0);
  set product(Product v) { setField(1, v); }
  $core.bool hasProduct() => $_has(0);
  void clearProduct() => clearField(1);

  $core.int get quantityRequested => $_get(1, 0);
  set quantityRequested($core.int v) { $_setUnsignedInt32(1, v); }
  $core.bool hasQuantityRequested() => $_has(1);
  void clearQuantityRequested() => clearField(2);

  $core.int get quantityReceived => $_get(2, 0);
  set quantityReceived($core.int v) { $_setUnsignedInt32(2, v); }
  $core.bool hasQuantityReceived() => $_has(2);
  void clearQuantityReceived() => clearField(3);

  $core.int get quantityRemaining => $_get(3, 0);
  set quantityRemaining($core.int v) { $_setUnsignedInt32(3, v); }
  $core.bool hasQuantityRemaining() => $_has(3);
  void clearQuantityRemaining() => clearField(4);

  $core.String get itemStatus => $_getS(4, '');
  set itemStatus($core.String v) { $_setString(4, v); }
  $core.bool hasItemStatus() => $_has(4);
  void clearItemStatus() => clearField(5);

  $core.bool get deleted => $_get(5, false);
  set deleted($core.bool v) { $_setBool(5, v); }
  $core.bool hasDeleted() => $_has(5);
  void clearDeleted() => clearField(6);
}

class Product extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Product', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..aOS(3, 'uom')
    ..hasRequiredFields = false
  ;

  Product() : super();
  Product.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Product.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Product clone() => Product()..mergeFromMessage(this);
  Product copyWith(void Function(Product) updates) => super.copyWith((message) => updates(message as Product));
  $pb.BuilderInfo get info_ => _i;
  static Product create() => Product();
  Product createEmptyInstance() => create();
  static $pb.PbList<Product> createRepeated() => $pb.PbList<Product>();
  static Product getDefault() => _defaultInstance ??= create()..freeze();
  static Product _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get uom => $_getS(2, '');
  set uom($core.String v) { $_setString(2, v); }
  $core.bool hasUom() => $_has(2);
  void clearUom() => clearField(3);
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
    ..a<Order>(1, 'order', $pb.PbFieldType.OM, Order.getDefault, Order.create)
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

  Order get order => $_getN(0);
  set order(Order v) { setField(1, v); }
  $core.bool hasOrder() => $_has(0);
  void clearOrder() => clearField(1);
}

class OrderSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OrderSummary', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..a<$core.int>(2, 'date', $pb.PbFieldType.O3)
    ..aOS(3, 'projectName')
    ..aOS(4, 'status')
    ..hasRequiredFields = false
  ;

  OrderSummary() : super();
  OrderSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  OrderSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  OrderSummary clone() => OrderSummary()..mergeFromMessage(this);
  OrderSummary copyWith(void Function(OrderSummary) updates) => super.copyWith((message) => updates(message as OrderSummary));
  $pb.BuilderInfo get info_ => _i;
  static OrderSummary create() => OrderSummary();
  OrderSummary createEmptyInstance() => create();
  static $pb.PbList<OrderSummary> createRepeated() => $pb.PbList<OrderSummary>();
  static OrderSummary getDefault() => _defaultInstance ??= create()..freeze();
  static OrderSummary _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.int get date => $_get(1, 0);
  set date($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasDate() => $_has(1);
  void clearDate() => clearField(2);

  $core.String get projectName => $_getS(2, '');
  set projectName($core.String v) { $_setString(2, v); }
  $core.bool hasProjectName() => $_has(2);
  void clearProjectName() => clearField(3);

  $core.String get status => $_getS(3, '');
  set status($core.String v) { $_setString(3, v); }
  $core.bool hasStatus() => $_has(3);
  void clearStatus() => clearField(4);
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
    ..pc<OrderSummary>(1, 'orders', $pb.PbFieldType.PM,OrderSummary.create)
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

  $core.List<OrderSummary> get orders => $_getList(0);
}

class DeleteOrderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteOrderRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'orderId')
    ..hasRequiredFields = false
  ;

  DeleteOrderRequest() : super();
  DeleteOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteOrderRequest clone() => DeleteOrderRequest()..mergeFromMessage(this);
  DeleteOrderRequest copyWith(void Function(DeleteOrderRequest) updates) => super.copyWith((message) => updates(message as DeleteOrderRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteOrderRequest create() => DeleteOrderRequest();
  DeleteOrderRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteOrderRequest> createRepeated() => $pb.PbList<DeleteOrderRequest>();
  static DeleteOrderRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteOrderRequest _defaultInstance;

  $core.String get orderId => $_getS(0, '');
  set orderId($core.String v) { $_setString(0, v); }
  $core.bool hasOrderId() => $_has(0);
  void clearOrderId() => clearField(1);
}

class DeleteOrderResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteOrderResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  DeleteOrderResponse() : super();
  DeleteOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteOrderResponse clone() => DeleteOrderResponse()..mergeFromMessage(this);
  DeleteOrderResponse copyWith(void Function(DeleteOrderResponse) updates) => super.copyWith((message) => updates(message as DeleteOrderResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteOrderResponse create() => DeleteOrderResponse();
  DeleteOrderResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteOrderResponse> createRepeated() => $pb.PbList<DeleteOrderResponse>();
  static DeleteOrderResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteOrderResponse _defaultInstance;
}

class Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Result', package: const $pb.PackageName('server'))
    ..a<Product>(1, 'product', $pb.PbFieldType.OM, Product.getDefault, Product.create)
    ..p<$core.int>(2, 'indexes', $pb.PbFieldType.P3)
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

  Product get product => $_getN(0);
  set product(Product v) { setField(1, v); }
  $core.bool hasProduct() => $_has(0);
  void clearProduct() => clearField(1);

  $core.List<$core.int> get indexes => $_getList(1);
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

class CreateProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProjectRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  CreateProjectRequest() : super();
  CreateProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateProjectRequest clone() => CreateProjectRequest()..mergeFromMessage(this);
  CreateProjectRequest copyWith(void Function(CreateProjectRequest) updates) => super.copyWith((message) => updates(message as CreateProjectRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateProjectRequest create() => CreateProjectRequest();
  CreateProjectRequest createEmptyInstance() => create();
  static $pb.PbList<CreateProjectRequest> createRepeated() => $pb.PbList<CreateProjectRequest>();
  static CreateProjectRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateProjectRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class CreateProjectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateProjectResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  CreateProjectResponse() : super();
  CreateProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateProjectResponse clone() => CreateProjectResponse()..mergeFromMessage(this);
  CreateProjectResponse copyWith(void Function(CreateProjectResponse) updates) => super.copyWith((message) => updates(message as CreateProjectResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateProjectResponse create() => CreateProjectResponse();
  CreateProjectResponse createEmptyInstance() => create();
  static $pb.PbList<CreateProjectResponse> createRepeated() => $pb.PbList<CreateProjectResponse>();
  static CreateProjectResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateProjectResponse _defaultInstance;
}

class CloseProjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CloseProjectRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  CloseProjectRequest() : super();
  CloseProjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CloseProjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CloseProjectRequest clone() => CloseProjectRequest()..mergeFromMessage(this);
  CloseProjectRequest copyWith(void Function(CloseProjectRequest) updates) => super.copyWith((message) => updates(message as CloseProjectRequest));
  $pb.BuilderInfo get info_ => _i;
  static CloseProjectRequest create() => CloseProjectRequest();
  CloseProjectRequest createEmptyInstance() => create();
  static $pb.PbList<CloseProjectRequest> createRepeated() => $pb.PbList<CloseProjectRequest>();
  static CloseProjectRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CloseProjectRequest _defaultInstance;

  $core.String get id => $_getS(0, '');
  set id($core.String v) { $_setString(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class CloseProjectResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CloseProjectResponse', package: const $pb.PackageName('server'))
    ..hasRequiredFields = false
  ;

  CloseProjectResponse() : super();
  CloseProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CloseProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CloseProjectResponse clone() => CloseProjectResponse()..mergeFromMessage(this);
  CloseProjectResponse copyWith(void Function(CloseProjectResponse) updates) => super.copyWith((message) => updates(message as CloseProjectResponse));
  $pb.BuilderInfo get info_ => _i;
  static CloseProjectResponse create() => CloseProjectResponse();
  CloseProjectResponse createEmptyInstance() => create();
  static $pb.PbList<CloseProjectResponse> createRepeated() => $pb.PbList<CloseProjectResponse>();
  static CloseProjectResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CloseProjectResponse _defaultInstance;
}

class FindProjectsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindProjectsRequest', package: const $pb.PackageName('server'))
    ..aOS(1, 'foremanId')
    ..hasRequiredFields = false
  ;

  FindProjectsRequest() : super();
  FindProjectsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindProjectsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindProjectsRequest clone() => FindProjectsRequest()..mergeFromMessage(this);
  FindProjectsRequest copyWith(void Function(FindProjectsRequest) updates) => super.copyWith((message) => updates(message as FindProjectsRequest));
  $pb.BuilderInfo get info_ => _i;
  static FindProjectsRequest create() => FindProjectsRequest();
  FindProjectsRequest createEmptyInstance() => create();
  static $pb.PbList<FindProjectsRequest> createRepeated() => $pb.PbList<FindProjectsRequest>();
  static FindProjectsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static FindProjectsRequest _defaultInstance;

  $core.String get foremanId => $_getS(0, '');
  set foremanId($core.String v) { $_setString(0, v); }
  $core.bool hasForemanId() => $_has(0);
  void clearForemanId() => clearField(1);
}

class FindProjectsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindProjectsResponse', package: const $pb.PackageName('server'))
    ..pc<Project>(1, 'projects', $pb.PbFieldType.PM,Project.create)
    ..hasRequiredFields = false
  ;

  FindProjectsResponse() : super();
  FindProjectsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FindProjectsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FindProjectsResponse clone() => FindProjectsResponse()..mergeFromMessage(this);
  FindProjectsResponse copyWith(void Function(FindProjectsResponse) updates) => super.copyWith((message) => updates(message as FindProjectsResponse));
  $pb.BuilderInfo get info_ => _i;
  static FindProjectsResponse create() => FindProjectsResponse();
  FindProjectsResponse createEmptyInstance() => create();
  static $pb.PbList<FindProjectsResponse> createRepeated() => $pb.PbList<FindProjectsResponse>();
  static FindProjectsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FindProjectsResponse _defaultInstance;

  $core.List<Project> get projects => $_getList(0);
}

