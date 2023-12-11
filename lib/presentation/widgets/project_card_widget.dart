import 'package:flutter/material.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.colorgrey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/mockup.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sbox,
                      const Text(
                        "Jazz music player",
                        style: TextStyle(
                            color: AppColors.colorwhite, fontSize: 18),
                      ),
                      sbox,
                      Text(
                        "Built with flutter and local data as-built with flutter and local data base",
                        style: TextStyle(
                            color: AppColors.colorwhite.withOpacity(0.5),
                            fontSize: 14),
                      ),
                      sbox,
                      const Wrap(spacing: 5, children: [
                        TextContainer(
                            width: 130,
                            text: 'Flutter',
                            image: 'assets/images/flutter.png'),
                        TextContainer(
                            width: 130,
                            text: 'Flutter',
                            image: 'assets/images/flutter.png'),
                      ]),
                      sbox20,
                      sbox20,
                      sbox20,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                              textColor: AppColors.colorwhite,
                              buttonColor: AppColors.colorred,
                              text: 'GitHub',
                              image: 'assets/images/github.png',
                              width: 185),
                          ButtonWidget(
                              textColor: AppColors.colorblack,
                              buttonColor: AppColors.colorwhite,
                              text: 'Youtube',
                              image: 'assets/images/youtube.png',
                              width: 185),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
