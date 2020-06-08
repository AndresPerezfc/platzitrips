import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzitrips/src/user/model/user.dart';
import 'package:platzitrips/src/user/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreApi();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);
}
