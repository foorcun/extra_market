import 'package:extra_market/core/common_domain/entity/aggregate_root.dart';
import 'package:extra_market/core/common_domain/value_object/my_document_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class MyUser<MyDocumentID> extends AggregateRoot<MyDocumentID> {}
