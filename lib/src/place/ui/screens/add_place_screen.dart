import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzitrips/src/place/ui/widgets/title_input_location.dart';
import 'package:platzitrips/src/widgets/gradient_back.dart';
import 'package:platzitrips/src/widgets/text_input.dart';
import 'package:platzitrips/src/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 35.0, left: 5.0),
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 45, left: 20, right: 10),
                  child: TitleHeader(
                    title: "Agregar Lugar",
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120, bottom: 20),
            child: ListView(
              children: <Widget>[
                Container(),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextInput(
                    hintText: "Titulo",
                    inputType: null,
                    maxLines: 1,
                    controller: _controllerTitlePlace,
                  ),
                ),
                TextInput(
                  hintText: "Descripción",
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  controller: _controllerDescriptionPlace,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextInputLocation(
                    hintText: "Añadir locación",
                    iconData: Icons.place,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
