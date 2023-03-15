import 'package:flutter/material.dart';
import '../constants/add_all.dart';
import '../models/models.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width/2.5,
          height: 150,
          child: Image.network(product.imageUrl,
            fit: BoxFit.cover,),
        ),
        Positioned(
          top: 70,
          // left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width/2.5, //- 10,
            height: 75,
            decoration: BoxDecoration(
              color: blackAl50,
            ),
          ),
        ),
        Positioned(
          top: 75,
          left: 5,
          // right: 5,
          child: Container(
            width: MediaQuery.of(context).size.width/2.5 - 10,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name, style: txtfont12!.copyWith(color: Colors.white),),
                        Text('\$${product.price}', style: txtfont12!.copyWith(color: Colors.white),)
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.add_circle, color: Colors.white,)),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}