import 'package:cloud_firestore/cloud_firestore.dart';

class LogoData {
  final String logoName;
  final String logoUrl;
  final String logoType;

  LogoData({
    required this.logoName,
    required this.logoUrl,
    required this.logoType,
  });

  factory LogoData.fromJson(Map<String, dynamic> json) {
    return LogoData(
      logoName: json['logoName'],
      logoUrl: json['logoUrl'],
      logoType: json['logoType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'logoName': logoName,
      'logoUrl': logoUrl,
      'logoType': logoType,
    };
  }

  LogoData copyWith({
    String? logoName,
    String? logoUrl,
    String? logoType,
  }) {
    return LogoData(
      logoName: logoName ?? this.logoName,
      logoUrl: logoUrl ?? this.logoUrl,
      logoType: logoType ?? this.logoType,
    );
  }

  // Method to convert Firestore DocumentSnapshot to LogoData
  static LogoData fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    return LogoData.fromJson(data);
  }

  // Method to convert LogoData to a Map that can be stored in Firestore
  Map<String, dynamic> toDocument() {
    return toJson();
  }
}