import 'package:pks_mobilka_8/models/product.dart';

Map<String, dynamic> productToJson(Product product) {
  return {
    'ID': product.id,
    'Name': product.title,
    'Description': product.description,
    'Price': product.price,
    'ImageURL': product.imageUrl,
    'IsFavorite': product.isFavorite,
  };
}