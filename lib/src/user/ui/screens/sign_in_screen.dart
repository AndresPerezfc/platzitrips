import "package:flutter/material.dart";
import 'package:platzitrips/src/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return signInGoogleUI();
  }

  //monitorear la sesion del usuario
  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, //todos los elmentos alineados al centro
        children: <Widget>[
          GradientBack("", null),
          Column(
            children: <Widget>[
              Text(
                "Welcome \n This is your Travel App",
                style: TextStyle(
                    fontSize: 37,
                    fontFamily: "Lato",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
