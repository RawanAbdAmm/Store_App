import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/services/update_procduct.dart';
import 'package:using_postman/widgets/customtextField.dart';

// ignore: must_be_immutable
class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productname, image, description;

  int? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  labeltext: 'Product Name',
                  onchanged: (data) {
                    productname = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labeltext: 'Description',
                  onchanged: (data) {
                    description = data;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  labeltext: 'Price',
                  onchanged: (data) {
                    price = int.parse(data);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  labeltext: 'image',
                  onchanged: (data) {
                    image = data;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () async{
                        isLoading = true;
                        setState(() {});
                        try {
                      await    Updateproduct(product);
                        } catch (e) {
                          isLoading = false;
                          setState(() {});
                        }
                        isLoading = false;
                        setState(() {});
                      },
                      child: const Text('Update'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> Updateproduct(ProductModel product) async{
  await UpdateProductService().updateProduct(
      title: productname==null?product.title:productname!,
      price: price.toString()==null?product.price:price.toString(),
      desc: description==null ? product.description:description!,
      image: image==null?product.image:image!,
      category: product.category, id: product.id,
    );
  }
}
