import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio_bilal_flutter/model/logo_model.dart';

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

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    List<LogoData> keywords = [];
    if (json['projectKeywords'] != null) {
      var list = json['projectKeywords'] as List;
      keywords = list.map((item) => LogoData.fromJson(item)).toList();
    }

    List<LogoData> links = [];
    if (json['projectLinks'] != null) {
      var list = json['projectLinks'] as List;
      links = list.map((item) => LogoData.fromJson(item)).toList();
    }

    return ProjectModel(
      projectName: json['projectName'],
      projectSubtitle: json['projectSubtitle'],
      projectKeywords: keywords,
      projectLinks: links,
      projectCoverImage: json['projectCoverImage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'projectName': projectName,
      'projectSubtitle': projectSubtitle,
      'projectKeywords': projectKeywords.map((keyword) => keyword.toJson()).toList(),
      'projectLinks': projectLinks.map((link) => link.toJson()).toList(),
      'projectCoverImage': projectCoverImage,
    };
  }

  factory ProjectModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ProjectModel.fromJson(data);
  }

  Map<String, dynamic> toFirestore() {
    return toJson();
  }
}