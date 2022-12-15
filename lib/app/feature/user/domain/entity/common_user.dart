import 'dart:convert';

import 'package:extra_market/app/feature/user/domain/entity/my_user.dart';
import 'package:extra_market/core/common_domain/value_object/my_document_id.dart';

class CommonUser extends MyUser<MyDocumentID> {
  String? displayName;
  String? email;
  String? photuUrl;
  CommonUser({
    this.displayName,
    this.email,
    this.photuUrl,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  CommonUser copyWith({
    String? displayName,
    String? email,
    String? photuUrl,
  }) {
    return CommonUser(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      photuUrl: photuUrl ?? this.photuUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'email': email,
      'photuUrl': photuUrl,
    };
  }

  factory CommonUser.fromMap(Map<String, dynamic> map) {
    return CommonUser(
      displayName: map['displayName'],
      email: map['email'],
      photuUrl: map['photuUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CommonUser.fromJson(String source) =>
      CommonUser.fromMap(json.decode(source));

  @override
  String toString() =>
      'CommonUser(displayName: $displayName, email: $email, photuUrl: $photuUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CommonUser &&
        other.displayName == displayName &&
        other.email == email &&
        other.photuUrl == photuUrl;
  }

  @override
  int get hashCode => displayName.hashCode ^ email.hashCode ^ photuUrl.hashCode;
}
