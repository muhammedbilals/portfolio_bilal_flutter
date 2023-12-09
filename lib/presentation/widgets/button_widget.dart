import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/hover_builder.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });
  final String text;
  final IconData icon;
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
                  width: 200,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: isHovered ? AppColors.bggray : AppColors.colorred,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, color: AppColors.colorwhite),
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
                ).translateOnHover,
              )),
    );
  }
}
