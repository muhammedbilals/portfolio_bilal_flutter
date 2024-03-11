import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.bggray,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5), // Add space between image and text
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.colorwhite,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ).translateOnHover,
    );
  }
}
