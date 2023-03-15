import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/constants/add_fontstyle.dart';
import 'package:flutter/material.dart';
import '../../Widget/Widget.dart';
import 'package:ecommerce_app/models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Zero To Unicorn'),
      bottomNavigationBar: CustomBottomAppbar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.catagories.map((category) => HeroCarousecard(category: category)).toList(),
          )),
          SelectionTitle( title: "RECOMMENT",),

        ],
      ),
    );
  }
}
