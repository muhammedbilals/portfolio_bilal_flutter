import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';

class ContainerTileWidget extends StatelessWidget {
  const ContainerTileWidget({
    super.key,
    required this.w,
    required this.h,
    required this.text,
    required this.icon,
  });

  final double w;
  final double h;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(padding5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70), color: colorgrey),
        width: width * w,
        height: height * h,
        child: Padding(
          padding: const EdgeInsets.all(padding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(padding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icon, color: Colors.white),
                    Text(
                      text,
                      style: const TextStyle(color: colorwhite, fontSize: 20),
                    ),
                  ],
                ),
              ),
              sbox20
            ],
          ),
        ),
      ),
    );
  }
}
