import "package:flutter/material.dart";
import 'package:platzitrips/src/user/ui/widgets/button.dart';
import 'package:platzitrips/src/widgets/gradient_back.dart';
import 'package:platzitrips/src/widgets/button_green.dart';

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
                onPressed: () {},
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
