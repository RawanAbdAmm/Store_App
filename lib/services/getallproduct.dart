import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/helper/api.dart';

class AllProductServices {
  Future<List<ProductModel>> getallproducts() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(uri: 'https://fakestoreapi.com/products');

    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productlist;
  }
}
