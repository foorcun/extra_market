import 'package:equatable/equatable.dart';

abstract class BaseEntity<DocumentID> extends Equatable {
  DocumentID? _documentID;

  DocumentID? get getDocumentID => _documentID;

  set setDocumentID(DocumentID? documentID) => _documentID = documentID;
}
