class ProductModel {
  final dynamic id;
  final String title;
  final String price;
  final String description;
  final String image;
  final RatingModel rating;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      price: jsonData['price'].toString(),
      description: jsonData['description'],
      title: jsonData['title'],
      image: jsonData['image'],
      rating: RatingModel.fromJson(
        jsonData['rating'],
      ),
      category: jsonData['category'],
    );
  }
}

class RatingModel {
  final num rate;
  final num count;
  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
