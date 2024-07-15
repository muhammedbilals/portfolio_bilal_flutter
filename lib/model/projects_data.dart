import 'package:portfolio_bilal_flutter/model/logo_data.dart';
import 'package:portfolio_bilal_flutter/model/project_model.dart';

List<ProjectModel> projectData = [
  ProjectModel(
      projectName: 'Jazz Music Player',
      projectSubtitle:
          'A music player application built with Flutter, using Hive for NoSQL database management, and BloC for state management.',
      projectKeywords: [hive, flutter, bloc],
      projectLinks: [github, playstore],
      projectCoverImage: 'assets/images/mockup.png'),
];
