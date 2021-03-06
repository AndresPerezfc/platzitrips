import 'package:flutter/material.dart';
import 'package:platzitrips/src/widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  final String pathImage;
  final double height, width, marginLeft;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;

  CardImageWithFabIcon(
      {Key key,
      @required this.pathImage,
      this.width,
      this.height,
      this.marginLeft,
      this.onPressedFabIcon,
      @required this.iconData});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        Container(
          height: height,
          width: width,
          margin: EdgeInsets.only(left: marginLeft),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(pathImage)),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0),
                )
              ]),
        ),
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressedFabIcon,
        ),
      ],
    );
  }
}
