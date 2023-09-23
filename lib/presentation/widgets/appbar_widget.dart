import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';

//main appbar that can be used across the app

class AppBarWidget extends StatelessWidget {
  final Icon? icons;
  final bool? leadingIcon;
  const AppBarWidget({super.key, this.icons, this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width * 0.1,
            height: width * 0.03,
            decoration: const BoxDecoration(color: colorwhite),
            child: const Center(
              child: Text(
                'HOME',
                style: TextStyle(
                    fontSize: 18, color: colorred, fontWeight: FontWeight.w900),
              ),
            ),
          )
        ],
      ),
    );
  }
}
