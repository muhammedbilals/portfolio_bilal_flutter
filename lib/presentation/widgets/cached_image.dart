import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/services/firebase_storage_services.dart';

class CustomImage extends StatefulWidget {
  final BoxFit fit;
  final double width;
  final double height;
  final BorderRadius borderRadius;
  final String imageName;

  const CustomImage({
    Key? key,
    this.fit = BoxFit.cover,
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = BorderRadius.zero,
    required this.imageName,
  }) : super(key: key);

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  final FirebaseStorageService storage = FirebaseStorageService();
  late Future<String> imageUrlFuture;

  @override
  void initState() {
    imageUrlFuture = storage.getImages(widget.imageName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: imageUrlFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return ClipRRect(
            borderRadius: widget.borderRadius,
            child: Image.asset(
              'assets/images/no-image.png',
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
            ),
          );
        } else {
          return ClipRRect(
            borderRadius: widget.borderRadius,
            child: CachedNetworkImage(
              imageUrl: snapshot.data!,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              fadeInDuration:
                  const Duration(milliseconds: 300), 
              fadeInCurve: Curves.easeIn, 
              errorWidget: (context, url, error) => Image.asset(
                'assets/images/no-image.png',
                fit: widget.fit,
                width: widget.width,
                height: widget.height,
              ),
            ),
          );
        }
      },
    );
  }
}
