import 'dart:convert';

import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';
import 'package:extra_market/core/common_domain/entity/base_entity.dart';

class Product extends BaseEntity<ProductId> {
  // ProductId documentId;
  String? productName;
  String? photoUrl;
  String? price;
  String? para_birimi;
  Product({this.productName, this.photoUrl, ProductId? productId})
      : super(documentID: productId);

  // Product({this.productName, ProductId? productId})
  //     : super(documentID: productId);

  @override
  set setDocumentID(ProductId? documentID) {
    // TODO: implement setDocumentID
    super.setDocumentID = documentID;
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  int get hashCode => productName.hashCode;
}
