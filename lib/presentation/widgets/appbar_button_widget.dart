import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';

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
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(color: selected ? colorwhite : colorgrey),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 25, color: colorred, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
