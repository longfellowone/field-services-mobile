///
//  Generated code. Do not modify.
//  source: supply.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const CreateOrderRequest$json = const {
  '1': 'CreateOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
  ],
};

const CreateOrderResponse$json = const {
  '1': 'CreateOrderResponse',
};

const AddOrderItemRequest$json = const {
  '1': 'AddOrderItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'uom', '3': 4, '4': 1, '5': 9, '10': 'uom'},
  ],
};

const AddOrderItemResponse$json = const {
  '1': 'AddOrderItemResponse',
};

const RemoveOrderItemRequest$json = const {
  '1': 'RemoveOrderItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
  ],
};

const RemoveOrderItemResponse$json = const {
  '1': 'RemoveOrderItemResponse',
};

const ModifyRequestedQuantityRequest$json = const {
  '1': 'ModifyRequestedQuantityRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 13, '10': 'quantity'},
  ],
};

const ModifyRequestedQuantityResponse$json = const {
  '1': 'ModifyRequestedQuantityResponse',
};

const SendOrderRequest$json = const {
  '1': 'SendOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const SendOrderResponse$json = const {
  '1': 'SendOrderResponse',
};

const ReceiveOrderItemRequest$json = const {
  '1': 'ReceiveOrderItemRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 13, '10': 'quantity'},
  ],
};

const ReceiveOrderItemResponse$json = const {
  '1': 'ReceiveOrderItemResponse',
};

const FindProjectOrderDatesRequest$json = const {
  '1': 'FindProjectOrderDatesRequest',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
  ],
};

const FindProjectOrderDatesResponse$json = const {
  '1': 'FindProjectOrderDatesResponse',
  '2': const [
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.server.Order', '10': 'orders'},
  ],
};

const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'date', '3': 2, '4': 1, '5': 3, '10': 'date'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
};

const FindOrderRequest$json = const {
  '1': 'FindOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const FindOrderResponse$json = const {
  '1': 'FindOrderResponse',
  '2': const [
    const {'1': 'date', '3': 1, '4': 1, '5': 3, '10': 'date'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.server.Item', '10': 'items'},
  ],
};

const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'product_id', '3': 1, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'uom', '3': 3, '4': 1, '5': 9, '10': 'uom'},
    const {'1': 'quantity_requested', '3': 4, '4': 1, '5': 13, '10': 'quantityRequested'},
    const {'1': 'quantity_received', '3': 5, '4': 1, '5': 13, '10': 'quantityReceived'},
    const {'1': 'item_status', '3': 6, '4': 1, '5': 9, '10': 'itemStatus'},
  ],
};

const ProductSearchRequest$json = const {
  '1': 'ProductSearchRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ProductSearchResponse$json = const {
  '1': 'ProductSearchResponse',
  '2': const [
    const {'1': 'results', '3': 5, '4': 3, '5': 11, '6': '.server.Result', '10': 'results'},
  ],
};

const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'product_uuid', '3': 1, '4': 1, '5': 9, '10': 'productUuid'},
    const {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'uom', '3': 4, '4': 1, '5': 9, '10': 'uom'},
    const {'1': 'indexes', '3': 5, '4': 3, '5': 11, '6': '.server.Index', '10': 'indexes'},
  ],
};

const Index$json = const {
  '1': 'Index',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 5, '10': 'index'},
  ],
};

