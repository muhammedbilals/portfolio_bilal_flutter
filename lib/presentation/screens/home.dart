import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/appbar_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/container_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        // appBar: const PreferredSize(
        //     preferredSize: Size.fromHeight(150), child: AppBarWidget()),
        backgroundColor: colorblack,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.025, vertical: padding),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContainerTileWidget(
                      color: colorgrey,
                      w: 0.625,
                      h: 0.22,
                      icon: Icons.info,
                      text: 'About'),
                  ContainerTileWidget(
                      color: colorwhite,
                      w: 0.309,
                      h: 0.22,
                      icon: Icons.info,
                      text: 'About'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerTileWidget(
                      color: colorwhite,
                      w: 0.309,
                      h: 0.22,
                      icon: Icons.info,
                      text: 'About'),
                  ContainerTileWidget(
                      color: colorwhite,
                      w: 0.309,
                      h: 0.22,
                      icon: Icons.info,
                      text: 'About'),
                  ContainerTileWidget(
                      color: colorwhite,
                      w: 0.309,
                      h: 0.22,
                      icon: Icons.info,
                      text: 'About'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
