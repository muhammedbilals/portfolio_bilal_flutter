import 'package:cloud_firestore/cloud_firestore.dart';

class LogoData {
  final String logoName;
  final String logoUrl;
  final LogoType logoType;

  LogoData({
    required this.logoName,
    required this.logoUrl,
    required this.logoType,
  });

  factory LogoData.fromJson(Map<String, dynamic> json) {
    return LogoData(
      logoName: json['logoName'],
      logoUrl: json['logoUrl'],
      logoType: _parseLogoType(json['logoType']), 
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'logoName': logoName,
      'logoUrl': logoUrl,
      'logoType': logoType.toString(), 
    };
  }

  LogoData copyWith({
    String? logoName,
    String? logoUrl,
    LogoType? logoType, 
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

  Map<String, dynamic> toDocument() {
    return toJson();
  }

  
  static LogoType _parseLogoType(String type) {
    switch (type) {
      case 'development':
        return LogoType.development;
      case 'tools':
        return LogoType.tools;
      case 'design':
        return LogoType.design;
      default:
        throw ArgumentError('Unknown logo type: $type');
    }
  }
}

enum LogoType {
  development,
  tools,
  design,
}
