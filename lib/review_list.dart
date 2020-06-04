import 'package:flutter/material.dart';
import 'package:platzitrips/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/foto.jpg", "Andrés Pérez", "1 review 5 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Campo", "2 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Perez", "22 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Perez", "22 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Perez", "22 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Perez", "22 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
        Review("assets/img/foto.jpg", "Felipe Perez", "22 review 3 photos",
            "interesante lugar con una cultura muy diversa"),
      ],
    );
  }
}
