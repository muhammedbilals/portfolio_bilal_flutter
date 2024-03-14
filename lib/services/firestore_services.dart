import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio_bilal_flutter/model/project_model.dart';


const String COLECTION_REF = 'projects';

class FirestoreService {
  final firestore = FirebaseFirestore.instance;

  late final CollectionReference _reference;

  FirestoreService() {
    _reference = firestore.collection(COLECTION_REF).withConverter<ProjectModel>(
        fromFirestore: (snapshot, _) => ProjectModel.fromJson(snapshot.data()!),
        toFirestore: (projects, _) => projects.toJson());
  }
  Stream<QuerySnapshot> getProjects() {
    return _reference.snapshots();
  }
  
}
