import 'package:extra_market/app/feature/order/domain/value_object/order_id.dart';
import 'package:extra_market/core/common_domain/entity/aggregate_root.dart';
import 'package:flutter/services.dart';

class Order extends AggregateRoot<OrderId> {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
