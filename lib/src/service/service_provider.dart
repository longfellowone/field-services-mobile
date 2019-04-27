import 'package:flutter/material.dart';

Type _typeOf<T>() => T;

abstract class ServiceBase {
  void dispose();
}

class ServiceProvider<T extends ServiceBase> extends StatefulWidget {
  ServiceProvider({
    Key key,
    @required this.child,
    @required this.service,
  }) : super(key: key);

  final Widget child;
  final T service;

  @override
  _ServiceProviderState<T> createState() => _ServiceProviderState<T>();

  static T of<T extends ServiceBase>(BuildContext context) {
    final type = _typeOf<_ServiceProviderInherited<T>>();
    _ServiceProviderInherited<T> provider = context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;
    return provider?.service;
  }
}

class _ServiceProviderState<T extends ServiceBase> extends State<ServiceProvider<T>> {
  @override
  void dispose() {
    widget.service?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new _ServiceProviderInherited<T>(
      service: widget.service,
      child: widget.child,
    );
  }
}

class _ServiceProviderInherited<T> extends InheritedWidget {
  _ServiceProviderInherited({
    Key key,
    @required Widget child,
    @required this.service,
  }) : super(key: key, child: child);

  final T service;

  @override
  bool updateShouldNotify(_ServiceProviderInherited oldWidget) => false;
}
