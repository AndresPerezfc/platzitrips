import 'package:flutter/material.dart';
import 'package:platzitrips/src/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final half_star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_half, color: Color(0xfff2c611)),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            Estrella(1),
            Estrella(1),
            Estrella(1),
            Estrella(1),
            half_star
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        Description(descriptionPlace),
        ButtonPurple(
          buttonText: "Navigate",
          onPressed: () {},
        )
      ],
    );
  }
}

class Estrella extends StatelessWidget {
  final int stars;

  Estrella(this.stars);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String descriptionPlace;

  Description(this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontFamily: "Lato"),
        textAlign: TextAlign.left,
      ),
    );
  }
}
