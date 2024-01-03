// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/screens/updateproduct.dart';

class CustomCards extends StatelessWidget {
  CustomCards({super.key, required this.product});

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.substring(0, 15),
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${product.price}'),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 32,
              top: -60,
              child: Image.network(
                product.image,
                height: 100,
                width: 100,
              )),
        ],
      ),
    );
  }
}
