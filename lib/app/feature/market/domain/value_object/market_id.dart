import 'package:equatable/equatable.dart';
import 'package:extra_market/core/common_domain/failure/failure.dart';
import 'package:extra_market/core/common_domain/failure/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:extra_market/core/common_domain/value_object/interface/base_id.dart';

class MarketId extends BaseId<String> {
// class MarketId extends Equatable {
  // final String value;

  MarketId._({required super.value});

  static Either<Failure, MarketId> create(String? value) {
    if (value == null || value.isEmpty) {
      //! Validation burda yapiliyor
      return Left(Failure("MarketId cannot be empty or null"));
    } else {
      return Right(MarketId._(value: value));
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
