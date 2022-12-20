import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';

class ProductModel extends Product {
  String? productId;
  ProductModel({String? productName, ProductId? productId})
      : super(productName: productName, productId: productId);

  setPhotoUrl(String photoUrl) {
    super.photoUrl = photoUrl;
  }

  ProductModel copyWith({
    String? productName,
  }) {
    return ProductModel(
      productName: productName ?? this.productName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productName': productName,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productName: map['productName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() => 'ProductModel(productName: $productName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel && other.productName == productName;
  }

  @override
  int get hashCode => productName.hashCode;

  ProductModel.newFromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    // if (doc.data().containsKey("id") == true) {
    //   id = doc['id'];
    // } else {
    //   id = null;
    // }

    // doc.data().containsKey("id") ? id = doc['id'] : id = null;

    // if (doc.data().containsKey("name") == true) {
    //   name = doc["name"];
    // } else {
    //   name = null;
    // }

    // print("doc datalari " + doc.toString());
    doc.data().containsKey("productName")
        ? productName = doc["productName"]
        : productName = null;

    doc.data().containsKey("photoUrl")
        ? photoUrl = doc["photoUrl"]
        : photoUrl = null;

    doc.data().containsKey("price") ? price = doc["price"] : price = null;
    doc.data().containsKey("para_birimi")
        ? para_birimi = doc["para_birimi"]
        : para_birimi = null;

    // this.setDocumentID(doc.id);
    // super.documentID(doc.id);
    productId = doc.id;
  }
}
