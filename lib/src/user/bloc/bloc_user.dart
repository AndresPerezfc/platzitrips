import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/src/place/model/place.dart';
import 'package:platzitrips/src/place/repository/firebase_storage_repository.dart';
import 'package:platzitrips/src/place/ui/widgets/card_image.dart';
import 'package:platzitrips/src/user/model/user.dart';
import 'package:platzitrips/src/user/repository/auth_repository.dart';
import 'package:platzitrips/src/user/repository/cloud_firestore_api.dart';
import 'package:platzitrips/src/user/repository/cloud_firestore_repository.dart';
import 'package:platzitrips/src/user/ui/widgets/profile_place.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository(); //para llamar al metodo signin

  // Flujo de datos - Streams
  // Stream - Firebase
  // StreamController

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus =>
      streamFirebase; //devuelve el estado de la sesion

  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();

  //Casos de uso del objeto user
  // 1. hacer signIn con la aplicacion de google

  Future<FirebaseUser> signIn() => _auth_repository.signInFirebase();

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);

  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  Stream<QuerySnapshot> placesListStream =
      Firestore.instance.collection(CloudFirestoreApi().PLACES).snapshots();
  Stream<QuerySnapshot> get placesStream => placesListStream;

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);

  Stream<QuerySnapshot> myPlacesListStream(String uid) => Firestore.instance
      .collection(CloudFirestoreApi().PLACES)
      .where("userOwner",
          isEqualTo: Firestore.instance
              .document("${CloudFirestoreApi().USERS}/${uid}"))
      .snapshots();

  List<CardImageWithFabIcon> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  // 2. Cerrar sesión
  signOut() {
    _auth_repository.signOut();
  }

  // 3 Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  @override
  void dispose() {}
}
