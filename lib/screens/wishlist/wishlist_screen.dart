import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);
  static const String routeName ='wishlistPage';
  static Route route(){
    return MaterialPageRoute(builder: (_)=> WishListPage(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "WishList",),
      bottomNavigationBar: CustomBottomAppbar(),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio:2.2 ),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int indext){
            return Center(
                child: ProductCard(product: Product.products[indext],
                  widthFactor: 1.1,
                leftPosision: 100,
                isWishLish: true,));
          }),
    );
  }
}
