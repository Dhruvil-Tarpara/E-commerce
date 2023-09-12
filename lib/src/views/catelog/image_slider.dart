import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:shimmer/shimmer.dart';

class ImageSlider extends StatelessWidget {
  final List<dynamic> image;
  const ImageSlider({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: height(context: context),
      indicatorColor: ConstColor.black,
      children: List.generate(
        image.length,
        (index) => CachedNetworkImage(
          imageUrl: image[index],
          fit: BoxFit.cover,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: ConstColor.black,
            highlightColor: ConstColor.grey,
            child: SizedBox(
              height: height(context: context),
              width: width(context: context),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ).toList(),
    );
  }
}
