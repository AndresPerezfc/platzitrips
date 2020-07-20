import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzitrips/src/widgets/gradient_back.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
