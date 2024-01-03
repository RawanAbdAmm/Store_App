import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/helper/api.dart';

class Categories_Service {
  Future<List<ProductModel>> getallcategoriesProducts(
      {required String categoryname}) async {
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(uri: 'https://fakestoreapi.com/products/category/$categoryname');

    List<ProductModel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productlist;
  }
}
