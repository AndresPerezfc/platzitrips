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
          CardImage("assets/img/land1.jpg"),
          CardImage("assets/img/land2.jpg"),
          CardImage("assets/img/land3.jpg"),
          CardImage("assets/img/land1.jpg"),
          CardImage("assets/img/land2.jpg"),
          CardImage("assets/img/land3.jpg"),
        ],
      ),
    );
  }
}
