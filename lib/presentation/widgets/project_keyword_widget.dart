import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';

class ProjectKeywordWidget extends StatelessWidget {
  const ProjectKeywordWidget({
    Key? key,
    required this.text,
    required this.image,
    this.width,
  }) : super(key: key);

  final String text;
  final String image;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.h,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.colorgrey,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.white, // Use white color for the border
          width: 1, // Thin border with 1.0 width
        ),
      ),
      child: FittedBox(
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.colorwhite,
            letterSpacing: 0.5,
          ),
        ),
      ).translateOnHover,
    );
  }
}
