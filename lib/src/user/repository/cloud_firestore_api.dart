import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:platzitrips/src/place/model/place.dart';
import 'package:platzitrips/src/place/ui/widgets/card_image.dart';
import 'package:platzitrips/src/user/model/user.dart';
import 'package:platzitrips/src/user/ui/widgets/profile_place.dart';

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
        "urlImage": place.urlImage,
        "userOwner": _db.document("${USERS}/${user.uid}"),
      }).then((DocumentReference dr) {
        dr.get().then((DocumentSnapshot snapshot) {
          snapshot.documentID;
          DocumentReference refUsers = _db.collection(USERS).document(user.uid);
          refUsers.updateData({
            "myPlaces": FieldValue.arrayUnion(
                [_db.document("${PLACES}/${snapshot.documentID}")])
          });
        });
      });
    });
  }

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<ProfilePlace> profilePlaces = List<ProfilePlace>();

    placesListSnapshot.forEach((p) {
      profilePlaces.add(ProfilePlace(Place(
          name: p.data["name"],
          description: p.data["description"],
          urlImage: p.data["urlImage"],
          likes: p.data["likes"])));
    });

    return profilePlaces;
  }

  List<CardImageWithFabIcon> buildPlaces(
      List<DocumentSnapshot> placesListSnapshot) {
    List<CardImageWithFabIcon> placesCard = List<CardImageWithFabIcon>();
    double width = 300, height = 350, left = 20;
    IconData iconData = Icons.favorite_border;

    placesListSnapshot.forEach((p) {
      placesCard.add(CardImageWithFabIcon(
        pathImage: p.data["urlImage"],
        iconData: iconData,
        width: width,
        height: height,
        marginLeft: left,
        onPressedFabIcon: () {},
      ));
    });

    return placesCard;
  }
}
