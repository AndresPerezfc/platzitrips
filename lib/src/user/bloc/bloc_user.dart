import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/src/user/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository(); //para llamar al metodo signin

  // Flujo de datos - Streams
  // Stream - Firebase
  // StreamController

  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus =>
      streamFirebase; //devuelve el estado de la sesion

  //Casos de uso del objeto user
  // 1. hacer signIn con la aplicacion de google

  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose() {}
}
