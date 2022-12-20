import 'dart:convert';

import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/order/domain/entity/order_item.dart';
import 'package:extra_market/app/feature/order/domain/value_object/order_id.dart';
import 'package:extra_market/app/feature/order/domain/value_object/order_item_id.dart';
import 'package:extra_market/core/common_domain/value_object/money.dart';

class OrderItemModel extends OrderItem {
  OrderItemId? orderItemId;
  // OrderId? orderId;
  // Product? product;
  // int? quantity;
  // Money? price;
  // Money? subTotal;
  OrderItemModel({
    super.orderItemId,
    super.orderId,
    super.product,
    super.quantity,
    super.price,
    super.subTotal,
  });

  OrderItemModel copyWith({
    OrderItemId? orderItemId,
    OrderId? orderId,
    Product? product,
    int? quantity,
    Money? price,
    Money? subTotal,
  }) {
    return OrderItemModel(
      orderItemId: orderItemId ?? this.orderItemId,
      orderId: orderId ?? this.orderId,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      subTotal: subTotal ?? this.subTotal,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'orderItemId': orderItemId!.value,
      'orderId': orderId!.value,
      // 'product': product?.toMap(),
      'quantity': quantity,
      'price': price?.value,
      'subTotal': subTotal?.value,
    };
  }

  factory OrderItemModel.fromMap(Map<String, dynamic> map) {
    return OrderItemModel(
      // orderItemId: map['orderItemId'] != null
      //     ? OrderItemId.fromMap(map['orderItemId'])
      //     : null,
      // orderId: map['orderId'] != null ? OrderId.fromMap(map['orderId']) : null,
      // product: map['product'] != null ? Product.fromMap(map['product']) : null,
      quantity: map['quantity']?.toInt(),
      price: Money.create(map['price']).fold((l) => null, (r) => r),
      subTotal: Money.create(map['price']).fold((l) => null, (r) => r),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderItemModel.fromJson(String source) =>
      OrderItemModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderItemModel(orderItemId: $orderItemId, orderId: $orderId, product: $product, quantity: $quantity, price: $price, subTotal: $subTotal)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderItemModel &&
        other.orderItemId == orderItemId &&
        other.orderId == orderId &&
        other.product == product &&
        other.quantity == quantity &&
        other.price == price &&
        other.subTotal == subTotal;
  }

  @override
  int get hashCode {
    return orderItemId.hashCode ^
        orderId.hashCode ^
        product.hashCode ^
        quantity.hashCode ^
        price.hashCode ^
        subTotal.hashCode;
  }
}
