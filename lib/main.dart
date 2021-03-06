import 'package:flutter/material.dart';
import 'package:tp_flutter/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: kMainRoute,
      routes: kRoutes,
      onGenerateRoute: (settings) => onGenerateRoute(settings),
    );
  }
}
