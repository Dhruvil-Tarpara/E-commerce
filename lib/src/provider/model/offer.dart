import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));

String offersToJson(Offers data) => json.encode(data.toJson());

class Offers {
  final String? id;
  final String? title;
  final String? subtitle;
  final String? code;
  final String? expirationDate;
  final int? discountPercentage;
  final String? backgroundImageUrl;
  final int? stock;
  final String? category;

  Offers({
    this.id,
    this.title,
    this.subtitle,
    this.code,
    this.expirationDate,
    this.discountPercentage,
    this.backgroundImageUrl,
    this.stock,
    this.category,
  });

  factory Offers.fromJson(Map<String, dynamic> json) => Offers(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        code: json["code"],
        expirationDate: json["expirationDate"],
        discountPercentage: json["discountPercentage"],
        backgroundImageUrl: json["backgroundImageURL"],
        stock: json["stock"],
        category: json["category"],
      );
  factory Offers.stream(QueryDocumentSnapshot<Object?> json) => Offers(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        code: json["code"],
        expirationDate: json["expirationDate"],
        discountPercentage: json["discountPercentage"],
        backgroundImageUrl: json["backgroundImageURL"],
        stock: json["stock"],
        category: json["category"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "code": code,
        "expirationDate": expirationDate,
        "discountPercentage": discountPercentage,
        "backgroundImageURL": backgroundImageUrl,
        "stock": stock,
        "category": category,
      };
}
