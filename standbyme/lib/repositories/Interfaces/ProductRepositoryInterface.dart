import 'package:standbyme_tcc/models/Product.dart';

abstract class IProductRepository {
  Future<List<Product>> getProducts();

  Future<List<Product>> getProductsByName(String name);
}
