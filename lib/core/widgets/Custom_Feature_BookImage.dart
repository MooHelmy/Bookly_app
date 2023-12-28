import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureBookImage extends StatelessWidget {
  const FeatureBookImage({
    super.key,
    this.ratiowidth = 2.2,
    this.ratioheigth = 4,
    required this.imageurl,
    this.circle = 30,
  });
  final String? imageurl;
  final double ratiowidth, ratioheigth;
  final double circle;

  @override
  Widget build(BuildContext context) {
    String link =
        'http://books.google.com/books/content?id=0QJ2DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api';
    return ClipRRect(
      borderRadius: BorderRadius.circular(circle),
      child: AspectRatio(
        aspectRatio: ratiowidth / ratioheigth,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error_outline),
          imageUrl: imageurl ?? link,
        ),
      ),
    );
  }
}
