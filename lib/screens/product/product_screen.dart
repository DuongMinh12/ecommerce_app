import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);
  static String routeName ='productPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Zero To Unicorn",),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}
