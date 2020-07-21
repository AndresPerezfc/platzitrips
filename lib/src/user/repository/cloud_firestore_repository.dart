import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzitrips/src/place/model/place.dart';
import 'package:platzitrips/src/place/ui/widgets/card_image.dart';
import 'package:platzitrips/src/user/model/user.dart';
import 'package:platzitrips/src/user/repository/cloud_firestore_api.dart';
import 'package:platzitrips/src/user/ui/widgets/profile_place.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreApi();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);

  List<CardImageWithFabIcon> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}
