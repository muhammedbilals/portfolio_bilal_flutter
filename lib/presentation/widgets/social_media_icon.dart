import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
    required this.image,
    this.onTap,
  });
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ).translateOnHover,
          ),
        ),
      ),
    );
  }
}
