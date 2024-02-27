import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_builder.dart';

class AppbarButtonWidget extends StatelessWidget {
  const AppbarButtonWidget({
    super.key,
    required this.title,
    this.selected = false,
    this.onTap,
  });
  final String title;
  final bool selected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (isHovered) {
        return InkWell(
          borderRadius: BorderRadius.circular(12),
          
          onTap: () => onTap!(),
          child: Container(
            color: selected ? AppColors.colorgrey : null,
            child: Padding(
              padding: const EdgeInsets.all(padding),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 15,
                      color: isHovered ? Colors.white : Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ).translateOnHover;
      },
    );
  }
}
