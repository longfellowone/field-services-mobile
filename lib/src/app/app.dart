import 'package:flutter/material.dart';
import 'package:myapp/src/api/api_provider.dart';
import 'package:myapp/src/api/supply.dart';
import 'package:myapp/src/orders/orders.dart';
import 'package:myapp/src/projects/projects.dart';

class App extends StatelessWidget {
  // (error is GrpcError && error.code == StatusCode.unavailable)
  // https://stackoverflow.com/questions/54105481/grpc-in-flutter-crash-when-no-internet
  // home: isFirstLaunch? IntroScreen():HomeScreen(),

  @override
  Widget build(BuildContext context) {
    return ServiceProvider(
      service: SupplyService(),
      child: MaterialApp(
        title: "my app title",
        initialRoute: OrderSummaryWidget.routeName,
        routes: <String, WidgetBuilder>{
          ProjectsWidget.routeName: (BuildContext context) => ProjectsWidget(),
          OrderSummaryWidget.routeName: (BuildContext context) => OrderSummaryWidget()
        },
      ),
    );
  }
}
