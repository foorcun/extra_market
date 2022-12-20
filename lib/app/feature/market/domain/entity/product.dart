import 'dart:convert';

import 'package:extra_market/app/feature/market/domain/entity/market.dart';
import 'package:extra_market/app/feature/market/domain/value_object/market_id.dart';
import 'package:extra_market/app/feature/market/domain/value_object/product_id.dart';
import 'package:extra_market/core/common_domain/entity/base_entity.dart';

class Product extends BaseEntity<ProductId> {
  // ProductId documentId; // superClasstan gelio
  String? productName;
  String? photoUrl;
  String? price;
  String? para_birimi;
  Product({
    this.productName,
    this.photoUrl,
    required super.documentId, // documentId == ProductId
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
