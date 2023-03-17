import 'package:flutter/material.dart';

import '../constants/add_all.dart';
import '../models/models.dart';

class CardProductCard extends StatelessWidget {
  final Product product;
  const CardProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Image.network(product.imageUrl, width: 100, height: 80, fit: BoxFit.cover,),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: txtfont14,),
                Text('\$${product.price}', style: txtfont14,)
              ],
            ),
          ),
          SizedBox(width: 10,),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle)),
              Text('1', style: txtfont14,),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_circle)),
            ],
          ),
        ],
      ),
    );
  }
}