import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);
  static String routeName ='catalogPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Zero To Unicorn",),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}
