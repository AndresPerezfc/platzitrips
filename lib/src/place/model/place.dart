import 'package:flutter/material.dart';
import 'package:platzitrips/src/user/model/user.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;

  Place({
    Key key,
    @required this.name,
    @required this.description,
    @required this.urlImage,
    this.likes,
  });
}
