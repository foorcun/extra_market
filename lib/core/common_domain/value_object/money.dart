import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:extra_market/core/common_domain/failure/failure.dart';

class Money extends Equatable {
  double value;

  Money._({
    required this.value,
  });

  static Either<Failure, Money> create(String? value) {
    if (value == null || double.parse(value) <= 0) {
      //! Validation burda yapiliyor
      return Left(Failure("Money cannot be negative or null"));
    } else {
      return Right(Money._(value: double.parse(value)));
    }
  }

  @override
  // TODO: implement props
  List<Object> get props => [value];
}
