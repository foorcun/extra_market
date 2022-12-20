import 'package:equatable/equatable.dart';

abstract class BaseEntity<T> extends Equatable {
  T? documentId;

  BaseEntity({T? documentID});

  T? get getDocumentID => documentId;

  set setDocumentID(T? documentID) => documentID = documentID;
}
