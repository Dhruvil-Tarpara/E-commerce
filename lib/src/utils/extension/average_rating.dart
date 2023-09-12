import 'package:ecommerce/src/provider/model/product.dart';

extension RatingExtension on List {
  double averagerating({List<Review>? data}) {
    double sumOfRatings = 0;
    if (data!.isEmpty) {
      return 0.0;
    } else {
      for (var rating in data) {
        sumOfRatings += rating.rating!;
      }
      return sumOfRatings / data.length.toDouble();
    }
  }
}
