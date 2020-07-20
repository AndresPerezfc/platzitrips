import 'package:flutter/material.dart';
import 'package:platzitrips/src/place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
            pathImage: "assets/img/land1.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/land2.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/land3.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/land1.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/land2.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/land3.jpg",
            iconData: Icons.favorite_border,
            height: 250,
            width: 350,
            marginLeft: 20,
          ),
        ],
      ),
    );
  }
}
