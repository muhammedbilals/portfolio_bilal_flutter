import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_builder.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    required this.width,
    this.image,
    required this.buttonColor,
    required this.textColor,
  });
  final String text;
  final double width;
  final Color buttonColor;
  final Color textColor;
  final IconData? icon;
  final String? image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      hoverColor: AppColors.colorblack,
      child: HoverBuilder(
          builder: (isHovered) => MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  height: 50,
                  width: width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: isHovered ? AppColors.bggray : buttonColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon != null
                          ? Icon(icon, color: textColor)
                          : const SizedBox.shrink(),
                      image != null
                          ? SizedBox(
                              height: 20, width: 20, child: Image.asset(image!))
                          : const SizedBox.shrink(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          text,
                          style:
                              TextStyle(color: textColor, letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                ).translateOnHover,
              )),
    );
  }
}
