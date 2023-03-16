import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/Widget/Widget.dart';
import 'package:ecommerce_app/constants/add_all.dart';
import 'package:ecommerce_app/models/models.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product});
  static const String routeName = 'productPage';
  final Product product;

  static Route route({required Product product}) {
    return MaterialPageRoute(
      builder: (_) => ProductPage(
        product: product,
      ),
      settings: RouteSettings(name: routeName),
    );
  }

  // final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(color: Colors.black,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.share), color: Colors.white,),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite), color: Colors.white,),
            ElevatedButton(onPressed: (){}, child: Text('ADD TO CART', style: txtfont18,),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),)
          ],
        ),
      ),),
      body: ListView(children: [
        CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: false,
            ),
            items: [
              HeroCarousecard(
                product: product,
              )
            ]),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black.withAlpha(50),
                //alignment: Alignment.bottomCenter,
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                color: Colors.black.withAlpha(100),
                //alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: txtfont14!.copyWith(color: Colors.white),
                      ),
                      Text(
                        '\$${product.price}',
                        style: txtfont14!.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            title: Text(
              'Product Information',
              style: txtfont18,
            ),
            initiallyExpanded: true,
            children: [
              ListTile(
                title: Text(
                    'Wolfberry Company’s Organic Goji juice can preserve the original flavour , color and nutrients in maximum in process, is the new choice of healthy food.'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            title: Text(
              'Delivery Information',
              style: txtfont18,
            ),
            initiallyExpanded: true,
            children: [
              ListTile(
                title: Text(
                    'Wolfberry Company’s Organic Goji juice can preserve the original flavour , color and nutrients in maximum in process, is the new choice of healthy food.'),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
