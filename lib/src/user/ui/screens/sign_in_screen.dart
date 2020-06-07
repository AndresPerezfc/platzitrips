import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/platziPage.dart';
import 'package:platzitrips/src/user/bloc/bloc_user.dart';
import 'package:platzitrips/src/user/ui/widgets/button.dart';
import 'package:platzitrips/src/widgets/gradient_back.dart';
import 'package:platzitrips/src/widgets/button_green.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot contiene los datos, object User
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatziPage();
        }
      },
    );
  }

  //monitorear la sesion del usuario
  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, //todos los elmentos alineados al centro
        children: <Widget>[
          GradientBack("", null),
          Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // centrar los elementos de manera vertical,
            children: <Widget>[
              Text(
                "Welcome \n This is your Travel App",
                style: TextStyle(
                    fontSize: 37,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  userBloc.signIn().then((FirebaseUser user) =>
                      print("El ususario es: ${user.displayName}"));
                },
                width: 300.0,
                height: 60.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
