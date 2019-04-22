import 'package:flutter/material.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/orders/orders.dart';
import 'package:myapp/src/projects/projects.dart';

class App extends StatelessWidget {
  final SupplyApi api = SupplyApi();

  // home: isFirstLaunch? IntroScreen():HomeScreen(),

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app title",
      initialRoute: OrderSummaryWidget.routeName,
      routes: <String, WidgetBuilder>{
//        Home.routeName: (BuildContext context) => Home(),
        Projects.routeName: (BuildContext context) => Projects(),
        OrderSummaryWidget.routeName: (BuildContext context) => OrderSummaryWidget(api: api)
      },
    );
  }
}
