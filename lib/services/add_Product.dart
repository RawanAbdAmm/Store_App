import 'package:using_postman/Models/product_Model.dart';
import 'package:using_postman/helper/api.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
 // ignore: missing_required_param
 Map <String,dynamic> data=await   Api().post(
      uri: 'https://fakestoreapi.com/products',
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
