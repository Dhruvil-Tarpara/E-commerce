import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  final String? userId;
  final String? profileName;
  final String? userName;
  final String? url;
  final String? email;
  final bool? emailVerified;

  Users({
    this.userId,
    this.profileName,
    this.userName,
    this.url,
    this.email,
    this.emailVerified,
  });

  factory Users.fromDocument(User doc) {
    return Users(
        userId: doc.uid,
        email: doc.email ?? "",
        userName: doc.displayName ?? "",
        url: doc.photoURL ?? "",
        profileName: '',
        emailVerified: doc.emailVerified);
  }
  factory Users.fromJson(Map<String, dynamic> json) => Users(
        userId: json["UserId"] ?? "",
        profileName: json["profileName"] ?? "",
        userName: json["userName"] ?? "",
        url: json["url"] ?? "",
        email: json["email"] ?? "",
        emailVerified: json["emailVerified"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "UserId": userId,
        "profileName": profileName,
        "userName": userName,
        "url": url,
        "email": email,
        "emailVerified": emailVerified,
      };
}
