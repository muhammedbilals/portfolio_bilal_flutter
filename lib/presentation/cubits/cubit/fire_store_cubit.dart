// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';
// import 'package:portfolio_bilal_flutter/model/project_model.dart';
// import 'package:portfolio_bilal_flutter/services/firestore_services.dart';

// part 'fire_store_state.dart';

// class FireStoreCubit extends Cubit<FireStoreState> {
//   FireStoreCubit() : super(FireStoreInitial());

//   final FirestoreService firestoreService = FirestoreService();
//   StreamSubscription<List<ProjectModel>> _streamSubscription ;

//   void getProjects() {
//     final data = firestoreService.getProjects();
//     data.listen((event) {});
//     _streamSubscription.
//   }
// }
