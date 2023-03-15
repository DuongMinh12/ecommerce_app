import 'screens/screens.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  FlashPage.routeName: (context) => FlashPage(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartPage.routeName:(context) => CartPage(),
  CatalogPage.routeName: (context) => CatalogPage(),
  ProductPage.routeName: (context) => ProductPage(),
  WishListPage.routeName: (context) => WishListPage(),
};