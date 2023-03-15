import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
static String routeName ='cartPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Zero To Unicorn",),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}
