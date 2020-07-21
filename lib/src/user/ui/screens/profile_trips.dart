import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/src/user/bloc/bloc_user.dart';
import 'package:platzitrips/src/user/model/user.dart';
import 'package:platzitrips/src/user/ui/screens/profile_header.dart';
import 'package:platzitrips/src/user/ui/widgets/profile_places_list.dart';
import 'package:platzitrips/src/user/ui/widgets/profile_background.dart';

class ProfileTrips extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    /*return Container(
      color: Colors.indigo,
    );*/

    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
          case ConnectionState.none:
            return CircularProgressIndicator();

          default:
        }
      },
    );

    /*Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[ProfileHeader(), ProfilePlacesList()],
        ),
      ],
    ); */
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("No logueado");
      return Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[Text("Usuario no logueado")],
          ),
        ],
      );
    } else {
      print("Logueado!");
      var user = User(
          uid: snapshot.data.uid,
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoUrl);

      return Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[
              ProfileHeader(
                user,
              ),
              ProfilePlacesList(
                user: user,
              )
            ],
          ),
        ],
      );
    }
  }
}
