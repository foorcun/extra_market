import 'package:dartz/dartz.dart';
import 'package:extra_market/core/common_domain/failure/failure.dart';
import 'package:extra_market/core/common_domain/value_object/interface/base_id.dart';

class OrderId extends BaseId<String> {
  OrderId._({required super.value});

  static Either<Failure, OrderId> create(String? value) {
    if (value == null || value.isEmpty) {
      //! Validation burda yapiliyor
      return Left(Failure("OrderId cannot be empty or null"));
    } else {
      return Right(OrderId._(value: value));
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
