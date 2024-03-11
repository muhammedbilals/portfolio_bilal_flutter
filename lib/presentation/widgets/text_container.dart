import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_builder.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(
      {super.key, required this.text, required this.image, this.width});
  final String text;
  final String image;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
        builder: (isHovered) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: isHovered
                      ? AppColors.bggray
                      : const Color.fromARGB(223, 81, 81, 81),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      text,
                      style: const TextStyle(
                          color: AppColors.colorwhite, letterSpacing: 0.5),
                    ),
                  )
                ],
              ),
            ).translateOnHover);
  }
}