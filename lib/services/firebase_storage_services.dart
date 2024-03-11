// getAvatarUrlForProfile(String imageFileName) async {
// final FirebaseStorage firebaseStorage = FirebaseStorage(
//     app: Firestore.instance.app,
//     storageBucket: 'gs://your-firebase-app-url.com');

// Uint8List imageBytes;
// await firebaseStorage
//     .ref()
//     .child(imageFileName)
//     .getData(100000000)
//     .then((value) => {imageBytes = value})
//     .catchError((error) => {});
// return imageBytes;
// }
