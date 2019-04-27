import 'dart:async';

import 'package:myapp/src/bloc/bloc_provider.dart';
import 'package:myapp/src/generated/supply.pb.dart';
import 'package:myapp/src/generated/supply.pbgrpc.dart';
import 'package:myapp/src/service/supply.dart';
import 'package:rxdart/rxdart.dart';

// Reduce down to one bloc?
class SearchBloc extends BlocBase {
  SearchBloc({this.service});

  final SupplyService service;

  BehaviorSubject<Order> _orderListController = BehaviorSubject<Order>();
  Stream<Order> get order => _orderListController;

  @override
  void dispose() {
    _orderListController.close();
  }
}
