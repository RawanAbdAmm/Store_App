import 'package:flutter/material.dart';
import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/widgets/customcard.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        clipBehavior: Clip.none,
        itemCount: products.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 100),
        itemBuilder: ((context, index) => CustomCards(
              product: products[index],
            )));
  }
}
