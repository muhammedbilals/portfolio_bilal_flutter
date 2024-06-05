import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/model/project_model.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/responsive.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/experties_list_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/text_container.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projects,
  });
  final ProjectModel projects;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Responsive.isMobile(context)
                ? 80.w
                : Responsive.isTablet(context)
                    ? 40.w
                    : 25.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.colorgrey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
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
                      Text(
                        projects.projectName,
                        style: const TextStyle(
                            color: AppColors.colorwhite, fontSize: 16),
                      ),
                      sbox,
                      Text(
                        projects.projectSubtitle,
                        style: TextStyle(
                            color: AppColors.colorwhite.withOpacity(0.5),
                            fontSize: 12),
                      ),
                      // const Wrap(children: [
                      //   ProjectKeywordWidget(
                      //       text: 'text', image: 'assets/images/linkedin.png'),
                      // ]),
                      // const ProjectKeywordWidget(
                      //     text: 'text', image: 'assets/images/linkedin.png'),

                      // SizedBox(
                      //   height: 10.h,
                      //   child: MasonryGridView.count(
                      //     crossAxisCount: 2,
                      //     mainAxisSpacing: 4,
                      //     crossAxisSpacing: 4,
                      //     itemBuilder: (context, index) {
                      //       return const Column(
                      //         children: [
                      //           ProjectKeywordWidget(
                      //               text: 'text',
                      //               image: 'assets/images/linkedin.png'),
                      //         ],
                      //       );
                      //     },
                      //   ),
                      // ),

                      // ExpertiesListWidget(
                      //   height: 7.h,
                      //   crossAxisCount: 1,
                      // ),
                      // const FittedBox(
                      //   fit: BoxFit.scaleDown,
                      //   child: Wrap(children: [
                      //     TextContainer(
                      //         text: 'Flutter Developers',
                      //         image: 'assets/images/flutter.png'),
                      //     TextContainer(
                      //         text: 'Flutter Developers',
                      //         image: 'assets/images/flutter.png'),
                      //     TextContainer(
                      //         text: 'Flutter Developers',
                      //         image: 'assets/images/flutter.png'),
                      //   ]),
                      // ),
                      sbox20,
                      sbox20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                              textColor: AppColors.colorwhite,
                              buttonColor: AppColors.colorred,
                              text: projects.projectLinks[0].logoName,
                              image: 'assets/images/github.png',
                              width: 12.5.w),
                          ButtonWidget(
                              textColor: AppColors.colorblack,
                              buttonColor: AppColors.colorwhite,
                              text: projects.projectLinks[1].logoName,
                              image: 'assets/images/youtube.png',
                              width: 11.5.w),
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
