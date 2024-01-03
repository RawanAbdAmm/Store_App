import 'package:using_postman/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getallcategories() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(uri: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
