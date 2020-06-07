import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzitrips/src/user/repository/firebase_auth_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<FirebaseUser> signInFirebase() => _firebaseAuthAPI
      .signIn(); //implementar la capa de datos de authrepository

  signOut() => _firebaseAuthAPI.signOut();
}
