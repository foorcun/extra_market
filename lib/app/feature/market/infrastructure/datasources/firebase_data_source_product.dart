import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';
import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/infrastructure/datasources/i_data_source_product.dart';
import 'package:extra_market/app/feature/market/infrastructure/models/product_model.dart';

class FirebaseDataSourceProduct extends IDataSourceProduct {
  CollectionReference<Map<String, dynamic>> _usersCollection =
      FirebaseFirestore.instance.collection("products");

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
  Stream<List<Product>> productList() {
    // TODO: implement productList
    return _usersCollection.snapshots().map((snapshot) {
      return snapshot.docs.map<Product>((doc) {
        var data = doc.data();
        // return model.fromSnapshot(doc);
        // print("#### data " + data.toString());
        return ProductModel.newFromSnapshot(doc);
      }).toList();
    });
  }

  @override
  updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
