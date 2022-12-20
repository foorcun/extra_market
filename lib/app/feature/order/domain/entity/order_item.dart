import 'package:extra_market/app/feature/market/domain/entity/product.dart';
import 'package:extra_market/app/feature/order/domain/value_object/order_id.dart';
import 'package:extra_market/app/feature/order/domain/value_object/order_item_id.dart';
import 'package:extra_market/core/common_domain/entity/base_entity.dart';
import 'package:extra_market/core/common_domain/value_object/money.dart';

class OrderItem extends BaseEntity<OrderItemId> {
  OrderId? orderId;
  Product? product;
  int? quantity;
  Money? price;
  Money? subTotal;
  OrderItem({
    this.orderId,
    this.product,
    this.quantity,
    this.price,
    this.subTotal,
    OrderItemId? orderItemId,
  }) : super(documentID: orderItemId);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
