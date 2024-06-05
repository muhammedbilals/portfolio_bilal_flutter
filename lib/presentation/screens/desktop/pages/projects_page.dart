import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:portfolio_bilal_flutter/core/colors/colors.dart';
import 'package:portfolio_bilal_flutter/core/constant/constants.dart';
import 'package:portfolio_bilal_flutter/model/projects_data.dart';
import 'package:portfolio_bilal_flutter/presentation/utils/hover_effect_extention.dart';
import 'package:portfolio_bilal_flutter/presentation/widgets/project_card_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            sbox20,
            sbox20,
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Projects",
                style: TextStyle(color: AppColors.colorwhite, fontSize: 25),
              ),
            ),
            sbox5,
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "The Projects i have contributed till now",
                style: TextStyle(
                    color: AppColors.colorwhite.withOpacity(0.5), fontSize: 16),
              ),
            ),
            SizedBox(
              height: 65.h,
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                itemCount: projectData.length,
                itemBuilder: (context, index) {
                  return  ProjectCard(projects: projectData[index]).translateOnHover;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
