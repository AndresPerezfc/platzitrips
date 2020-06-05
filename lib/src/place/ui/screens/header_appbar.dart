import 'package:flutter/material.dart';
import 'package:platzitrips/src/place/ui/widgets/card_image_list.dart';
import 'package:platzitrips/src/widgets/gradient_back.dart';

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
