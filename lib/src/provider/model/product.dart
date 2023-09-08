// class Product {
//   final String id;
//   final String name;
//   final String description;
//   final double price;
//   final List<String> colors;
//   final List<String> sizes;
//   final Map<String, int> stock; // Map color to available quantity

//   Product({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.colors,
//     required this.sizes,
//     required this.stock,
//   });

//   // Create a copy of the product with updated stock for a specific color and size.
//   Product updateStock(String color, String size, int quantity) {
//     final updatedStock = Map.from(stock);
//     updatedStock[color]![size] = quantity;

//     return Product(
//       id: id,
//       name: name,
//       description: description,
//       price: price,
//       colors: colors,
//       sizes: sizes,
//       stock: updatedStock,
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String id;
  final String name;
  final String subtitle;
  final String description;
  final double price;
  final List<dynamic> sizes;
  final List<dynamic> colors;
  final int stock;
  final String category;
  final bool newArrivals;
  final List<dynamic> images;
  final Map<String, dynamic>? rating;

  Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.sizes,
    required this.colors,
    required this.stock,
    required this.category,
    required this.newArrivals,
    required this.images,
    required this.rating,
  });

  // Convert the Product object to a JSON representation.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'subtitle': subtitle,
      'description': description,
      'price': price,
      'sizes': sizes,
      'colors': colors,
      'stock': stock,
      'category': category,
      'newArrivals': newArrivals,
      'images': images,
      'rating': rating,
    };
  }

  // Create a factory constructor to create a Product object from JSON data.
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      subtitle: json['subtitle'],
      description: json['description'],
      price: json['price'].toDouble(),
      sizes: List<String>.from(json['sizes']),
      colors: List<String>.from(json['colors']),
      stock: json['stock'],
      category: json['category'],
      newArrivals: json['newArrivals'],
      images: List<String>.from(json['images']),
      rating: json["rating"],
    );
  }

  factory Product.stream(QueryDocumentSnapshot<Object?> json) => Product(
        id: json['id'],
        name: json['name'],
        subtitle: json['subtitle'],
        description: json['description'],
        price: json['price'].toDouble(),
        sizes: json['sizes'],
        colors: json['colors'],
        stock: json['stock'],
        category: json['category'],
        newArrivals: json['newArrivals'],
        images: json['images'],
        rating: json["rating"],
      );
}

class Review {
  final String? email;
  final String? name;
  final double? rating;
  final String? review;

  Review({
    this.email,
    this.name,
    this.rating,
    this.review,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        email: json["email"],
        name: json["name"],
        rating: json["rating"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
        "rating": rating,
        "review": review,
      };
}
