///
//  Generated code. Do not modify.
//  source: supply.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

const CreateOrderRequest$json = const {
  '1': 'CreateOrderRequest',
  '2': const [
    const {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'foreman', '3': 4, '4': 1, '5': 9, '10': 'foreman'},
    const {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
  ],
};

const CreateOrderResponse$json = const {
  '1': 'CreateOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.OrderSummary', '10': 'order'},
  ],
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
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
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
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
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
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
};

const SendOrderRequest$json = const {
  '1': 'SendOrderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'comments', '3': 2, '4': 1, '5': 9, '10': 'comments'},
  ],
};

const SendOrderResponse$json = const {
  '1': 'SendOrderResponse',
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
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
  '2': const [
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
};

const Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'project', '3': 2, '4': 1, '5': 11, '6': '.server.Project', '10': 'project'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.server.Item', '10': 'items'},
    const {'1': 'date', '3': 4, '4': 1, '5': 5, '10': 'date'},
    const {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'comments', '3': 6, '4': 1, '5': 9, '10': 'comments'},
  ],
};

const Project$json = const {
  '1': 'Project',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'product', '3': 1, '4': 1, '5': 11, '6': '.server.Product', '10': 'product'},
    const {'1': 'quantity_requested', '3': 2, '4': 1, '5': 13, '10': 'quantityRequested'},
    const {'1': 'quantity_received', '3': 3, '4': 1, '5': 13, '10': 'quantityReceived'},
    const {'1': 'quantity_remaining', '3': 4, '4': 1, '5': 13, '10': 'quantityRemaining'},
    const {'1': 'item_status', '3': 5, '4': 1, '5': 9, '10': 'itemStatus'},
    const {'1': 'deleted', '3': 6, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

const Product$json = const {
  '1': 'Product',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'uom', '3': 3, '4': 1, '5': 9, '10': 'uom'},
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
    const {'1': 'order', '3': 1, '4': 1, '5': 11, '6': '.server.Order', '10': 'order'},
  ],
};

const OrderSummary$json = const {
  '1': 'OrderSummary',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'date', '3': 2, '4': 1, '5': 5, '10': 'date'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
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
    const {'1': 'orders', '3': 1, '4': 3, '5': 11, '6': '.server.OrderSummary', '10': 'orders'},
  ],
};

const DeleteOrderRequest$json = const {
  '1': 'DeleteOrderRequest',
  '2': const [
    const {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
  ],
};

const DeleteOrderResponse$json = const {
  '1': 'DeleteOrderResponse',
};

const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'product', '3': 1, '4': 1, '5': 11, '6': '.server.Product', '10': 'product'},
    const {'1': 'indexes', '3': 2, '4': 3, '5': 5, '10': 'indexes'},
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

const CreateProjectRequest$json = const {
  '1': 'CreateProjectRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const CreateProjectResponse$json = const {
  '1': 'CreateProjectResponse',
};

const CloseProjectRequest$json = const {
  '1': 'CloseProjectRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const CloseProjectResponse$json = const {
  '1': 'CloseProjectResponse',
};

const FindProjectsRequest$json = const {
  '1': 'FindProjectsRequest',
  '2': const [
    const {'1': 'foreman_id', '3': 1, '4': 1, '5': 9, '10': 'foremanId'},
  ],
};

const FindProjectsResponse$json = const {
  '1': 'FindProjectsResponse',
  '2': const [
    const {'1': 'projects', '3': 1, '4': 3, '5': 11, '6': '.server.Project', '10': 'projects'},
  ],
};

