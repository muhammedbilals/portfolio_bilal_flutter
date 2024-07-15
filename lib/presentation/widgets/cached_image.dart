// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio_bilal_flutter/services/firebase_storage_services.dart';

// class CustomImage extends StatelessWidget {
//   final BoxFit fit;
//   final double width;
//   final double height;
//   final BorderRadius borderRadius;
//   final String url;

//   CustomImage({
//     Key? key,
//     this.fit = BoxFit.cover,
//     this.width = double.infinity,
//     this.height = double.infinity,
//     this.borderRadius = BorderRadius.zero,
//     required this.url,
//   }) : super(key: key);


//   late Future<String> imageUrlFuture;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: borderRadius,
//       child: CachedNetworkImage(
//         imageUrl: url,
//         fit: fit,
//         width: width,
//         height: height,
//         fadeInDuration: const Duration(milliseconds: 300),
//         fadeInCurve: Curves.easeIn,
//         errorWidget: (context, url, error) => Image.asset(
//           'assets/images/no-image.png',
//           fit: fit,
//           width: width,
//           height: height,
//         ),
//       ),
//     );
//   }
// }
