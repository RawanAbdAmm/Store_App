import 'package:flutter/material.dart';
import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/services/getallproduct.dart';
import 'package:using_postman/widgets/gridview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('New Trend', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 90),
          child: FutureBuilder<List<ProductModel>>(
              future: AllProductServices().getallproducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> products = snapshot.data!;
                  return Gridview(products: products);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ));
  }
}
