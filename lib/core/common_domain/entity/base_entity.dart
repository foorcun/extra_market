import 'package:equatable/equatable.dart';

abstract class BaseEntity<T> extends Equatable {
  T? documentId;

  BaseEntity({T? documentId});

  T? get getDocumentID => documentId;

  set setDocumentID(T? documentId) => documentId = documentId;
}
