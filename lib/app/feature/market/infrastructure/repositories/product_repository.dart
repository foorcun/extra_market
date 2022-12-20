import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/domain/repositories/i_product_repository.dart';
import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';
import 'package:extra_market/app/feature/market/infrastructure/datasources/i_data_source_product.dart';
import 'package:get/get.dart';

class ProductRepository extends IProductRepository {
  IDataSourceProduct? dataSourceProduct;
  ProductRepository() {
    dataSourceProduct = Get.find<IDataSourceProduct>();
  }

  @override
  Stream<List<Product>> productList() {
    // TODO: implement productList
    var v = dataSourceProduct!.productList();
    print("stream ilk deger" + v.first.toString());
    return v;
  }

  @override
  addProduct(Product product) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  deleteProduct({required ProductId productId}) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> findAllProduct() {
    // TODO: implement findAllProduct
    throw UnimplementedError();
  }

  @override
  Future<Product> findProductbyId({required ProductId productId}) {
    // TODO: implement findProductbyId
    throw UnimplementedError();
  }

  @override
  updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
