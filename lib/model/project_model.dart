import 'package:portfolio_bilal_flutter/model/logo_data_model.dart';

class ProjectModel {
  final String projectName;
  final String projectSubtitle;
  final List<LogoData> projectKeywords;
  final List<LogoData> projectLinks;
  final String projectCoverImage;

  ProjectModel(
      {required this.projectName,
      required this.projectSubtitle,
      required this.projectKeywords,
      required this.projectLinks,
      required this.projectCoverImage});
}
