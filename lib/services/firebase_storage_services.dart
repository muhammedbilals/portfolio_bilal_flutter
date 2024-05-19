import 'dart:async';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  Future<String>  getImages(String imageFileName) async {
final ref = FirebaseStorage.instance.ref().child(imageFileName);

var url = await ref.getDownloadURL();
print(url);
return url;
}
}