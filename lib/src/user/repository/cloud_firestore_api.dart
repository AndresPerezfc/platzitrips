import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzitrips/src/place/model/place.dart';
import 'package:platzitrips/src/user/model/user.dart';

class CloudFirestoreApi {
  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePalces,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlace = _db.collection(PLACES);
    await _auth.currentUser().then((FirebaseUser user) {
      refPlace.add({
        "name": place.name,
        "description": place.description,
        "likes": place.likes,
        "userOwner": "${USERS}/${user.uid}"
      });
    });
  }
}
