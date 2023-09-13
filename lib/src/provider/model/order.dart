import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

OrderProduct orderProductFromJson(String str) =>
    OrderProduct.fromJson(json.decode(str));

String orderProductToJson(OrderProduct data) => json.encode(data.toJson());

class OrderProduct {
  final String orderId;
  final String productId;
  final String title;
  final String subtitle;
  final String image;
  final double price;
  final String color;
  final String size;
  final int quantity;
  final String status;

  OrderProduct({
    required this.orderId,
    required this.productId,
    required this.title,
    required this.subtitle,
    required this.image,
     required this.price,
    required this.color,
    required this.size,
    required this.quantity,
    required this.status,
  });

  factory OrderProduct.fromJson(Map<String, dynamic> json) => OrderProduct(
        orderId: json["orderId"],
        productId: json["productId"],
        title: json["title"],
        subtitle: json["subtitle"],
        image: json["image"],
         price: json['price'].toDouble(),
        color: json["color"],
        size: json["size"],
        quantity: json["quantity"],
        status: json["status"],
      );

  factory OrderProduct.stream(QueryDocumentSnapshot<Object?> json) =>
      OrderProduct(
        orderId: json["orderId"],
        productId: json["productId"],
        title: json["title"],
        subtitle: json["subtitle"],
         image: json["image"],
          price: json['price'],
        color: json["color"],
        size: json["size"],
        quantity: json["quantity"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "productId": productId,
        "title": title,
        "subtitle": subtitle,
         "image": image,
         'price': price,
        "color": color,
        "size": size,
        "quantity": quantity,
        "status": status,
      };
}
