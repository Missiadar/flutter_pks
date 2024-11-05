class Product {
  final int id;
  final String description;
  final String title;
  final String imageUrl;
  final int price;
  bool isFavorite;

  Product(
      {required this.id,
      required this.description,
      required this.title,
      required this.price,
      required this.imageUrl,
      required this.isFavorite});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['ID'],
      title: json['Name'],
      description: json['Description'],
      price: (json['Price'] as num).toInt(),
      imageUrl: json['ImageURL'],
      isFavorite: json['IsFavorite'] ?? false,
    );
  }
}
