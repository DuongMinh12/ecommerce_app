import 'screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/routes.dart';

void main() {
  runApp(
      MaterialApp(
    initialRoute: HomeScreen.routeName,
        routes: routes,
        debugShowCheckedModeBanner: false,
  ));
}
