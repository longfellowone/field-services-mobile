import 'package:flutter/material.dart';
import 'package:myapp/src/orders/orders.dart';
import 'package:myapp/src/projects/projects.dart';
import 'package:myapp/src/service/service_provider.dart';
import 'package:myapp/src/service/supply.dart';

class App extends StatelessWidget {
  // (error is GrpcError && error.code == StatusCode.unavailable)
  // https://stackoverflow.com/questions/54105481/grpc-in-flutter-crash-when-no-internet
  // home: isFirstLaunch? IntroScreen():HomeScreen(),
  // WidgetsBinding.instance.addPostFrameCallback(...)
  // GlobalKey<scaffoldstate> _scaffoldKey = GlobalKey<scaffoldstate>();

  @override
  Widget build(BuildContext context) {
    return ServiceProvider<SupplyService>(
      service: SupplyService(),
      child: MaterialApp(
        title: "my app title",
        initialRoute: OrdersWidget.routeName,
        routes: <String, WidgetBuilder>{
          OrdersWidget.routeName: (BuildContext context) => OrdersWidget(),
          ProjectsWidget.routeName: (BuildContext context) => ProjectsWidget(),
        },
      ),
    );
  }
}
