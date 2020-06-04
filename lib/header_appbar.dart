import 'package:flutter/material.dart';
import 'package:platzitrips/card_image_list.dart';
import 'package:platzitrips/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Popular"),
        CardImageList(),
      ],
    );
  }
}
