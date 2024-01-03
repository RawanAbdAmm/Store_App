import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/helper/api.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category,
      required int? id}) async {
    // ignore: missing_required_param
    Map<String, dynamic> data = await Api().put(
      uri: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
