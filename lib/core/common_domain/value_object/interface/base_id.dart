import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:extra_market/core/common_domain/failure/value_failure.dart';
import 'package:extra_market/core/common_domain/value_object/interface/i_validatable.dart';

// abstract class BaseId<T> implements IValidatable {
abstract class BaseId<T> extends Equatable {
  // value object
  // late T value;
  String value;
  BaseId({required this.value});

  // Either<ValueFailure<T>, T> get value;

}
