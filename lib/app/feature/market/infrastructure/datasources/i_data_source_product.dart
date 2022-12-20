import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';

abstract class IDataSourceProduct {
  addProduct(Product product);
  updateProduct(Product product);
  deleteProduct({required ProductId productId});
  Future<Product> findProductbyId({required ProductId productId});
  Future<List<Product>> findAllProduct();

  Stream<List<Product>> productList();
}
