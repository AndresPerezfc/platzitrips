import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:platzitrips/src/place/repository/firebase_storage_api.dart';

class FirebaseStorageRepository {
  final _firebaseStoraApi = FirebaseStorageApi();
  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStoraApi.uploadFile(path, image);
}
