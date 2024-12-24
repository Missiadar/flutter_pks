import '../../lib copy/api/api.dart';
import '../models/product.dart';

class ProductService {
  static Future<List<Product>> getProducts() async {
    final response = await api.get('/products');
    return (response.data as List)
        .map((product) => Product.fromJson(product))
        .toList();
  }
}