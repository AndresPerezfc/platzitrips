import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzitrips/src/place/ui/screens/home_page.dart';
import 'package:platzitrips/src/user/bloc/bloc_user.dart';

import 'package:platzitrips/src/user/ui/screens/profile_trips.dart';
import 'package:platzitrips/src/place/ui/screens/search_trips.dart';

class PlatziPage extends StatefulWidget {
  @override
  _PlatziPageState createState() => _PlatziPageState();
}

class _PlatziPageState extends State<PlatziPage> {
  int indexTap = 0;
  UserBloc userBloc;

  final List<Widget> widgetsChildren = [
    HomePage(),
    SearchTrips(),
    BlocProvider<UserBloc>(bloc: UserBloc(), child: ProfileTrips())
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.lightGreenAccent,
            primaryColor: Colors.greenAccent),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Inicio")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("busqueda")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Perfil")),
            ]),
      ),
    );
  }
}
