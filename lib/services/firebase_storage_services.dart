import 'dart:async';
import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  Future<String> getImages(String imageFileName) async {
    try {
      final url =
          FirebaseStorage.instance.ref().child('flutter.png').getDownloadURL();

      log(url.toString());
      return url;
    }  catch (e) {
      throw FirebaseException;
    }
  }
}
