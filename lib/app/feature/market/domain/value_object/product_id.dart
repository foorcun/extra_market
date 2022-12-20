import 'package:extra_market/core/common_domain/failure/failure.dart';
import 'package:extra_market/core/common_domain/failure/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:extra_market/core/common_domain/value_object/interface/base_id.dart';

class ProductId extends BaseId<String> {
  ProductId._({required super.value});

  static Either<Failure, ProductId> create(String? value) {
    if (value == null || value.isEmpty) {
      //! Validation burda yapiliyor
      return Left(Failure("ProductId cannot be empty or null"));
    } else {
      return Right(ProductId._(value: value));
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
