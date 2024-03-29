import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/button_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/experties_list_widget.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/project_keyword_widget.dart';

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
            height: 60.h,
            width: 25.w,
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
                            color: AppColors.colorwhite, fontSize: 16),
                      ),
                      sbox,
                      Text(
                        "Built with flutter and local data as-built with flutter and local data base",
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
                      //   height: 10.h,
                      //   crossAxisCount: 1,
                      // ),
                      sbox20,
                      sbox20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonWidget(
                              textColor: AppColors.colorwhite,
                              buttonColor: AppColors.colorred,
                              text: 'GitHub',
                              image: 'assets/images/github.png',
                              width: 11.5.w),
                          ButtonWidget(
                              textColor: AppColors.colorblack,
                              buttonColor: AppColors.colorwhite,
                              text: 'Youtube',
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
