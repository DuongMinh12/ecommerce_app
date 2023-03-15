import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);
  static String routeName ='wishlistPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Zero To Unicorn",),
      bottomNavigationBar: CustomBottomAppbar(),
    );
  }
}
