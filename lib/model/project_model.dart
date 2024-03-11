import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio_bilal_flutter/model/logo_data_model.dart';

class ProjectModel {
  final String projectName;
  final String projectSubtitle;
  final List<LogoData> projectKeywords;
  final List<LogoData> projectLinks;
  final String projectCoverImage;

  ProjectModel({
    required this.projectName,
    required this.projectSubtitle,
    required this.projectKeywords,
    required this.projectLinks,
    required this.projectCoverImage,
  });

  factory ProjectModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    List<LogoData> keywords = [];
    if (data['projectKeywords'] != null) {
      var list = data['projectKeywords'] as List;
      keywords = list.map((item) => LogoData.fromJson(item)).toList();
    }

    List<LogoData> links = [];
    if (data['projectLinks'] != null) {
      var list = data['projectLinks'] as List;
      links = list.map((item) => LogoData.fromJson(item)).toList();
    }

    return ProjectModel(
      projectName: data['projectName'],
      projectSubtitle: data['projectSubtitle'],
      projectKeywords: keywords,
      projectLinks: links,
      projectCoverImage: data['projectCoverImage'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'projectName': projectName,
      'projectSubtitle': projectSubtitle,
      'projectKeywords': projectKeywords.map((keyword) => keyword.toJson()).toList(),
      'projectLinks': projectLinks.map((link) => link.toJson()).toList(),
      'projectCoverImage': projectCoverImage,
    };
  }
}