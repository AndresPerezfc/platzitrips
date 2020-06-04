import 'package:flutter/material.dart';
import 'package:platzitrips/home_page.dart';
import 'package:platzitrips/profile_page.dart';
import 'package:platzitrips/serach_page.dart';

class PlatziPage extends StatefulWidget {
  @override
  _PlatziPageState createState() => _PlatziPageState();
}

class _PlatziPageState extends State<PlatziPage> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomePage(),
    SearchPage(),
    ProfilePage()
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
