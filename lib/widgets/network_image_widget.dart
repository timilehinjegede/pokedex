import 'package:pokedex/utils/utils.dart';
import 'package:pokedex/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  final String imageUrl;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height ?? 100.dy,
      width: width ?? 100.dx,
      fit: BoxFit.cover,
      placeholder: (context, url) => LoadingIndicator(size: 30.sp),
      errorWidget: (context, url, error) => const Center(
        child: Icon(
          Icons.error,
          color: Colors.red,
          size: 20,
        ),
      ),
    );
  }
}
