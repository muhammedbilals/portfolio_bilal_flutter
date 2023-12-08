import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/hover_builder.dart';

class AppbarButtonWidget extends StatelessWidget {
  const AppbarButtonWidget({
    super.key,
    required this.title,
    this.selected = false,
  });
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return HoverBuilder(
      builder: (isHovered) {
        return Padding(
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
        );
      },
    );
  }
}
