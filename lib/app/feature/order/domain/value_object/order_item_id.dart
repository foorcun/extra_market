import 'package:dartz/dartz.dart';
import 'package:extra_market/core/common_domain/failure/failure.dart';
import 'package:extra_market/core/common_domain/value_object/interface/base_id.dart';

class OrderItemId extends BaseId<String> {
  OrderItemId._({required super.value});

  static Either<Failure, OrderItemId> create(String? value) {
    if (value == null || value.isEmpty) {
      //! Validation burda yapiliyor
      return Left(Failure("OrderItemId cannot be empty or null"));
    } else {
      return Right(OrderItemId._(value: value));
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
